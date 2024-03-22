//
//  ContentView.swift
//  PreparationForToday
//
//  Created by 전준수 on 3/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("isFirstLaunch") var isFirstLaunch: Bool = true
    @StateObject var characterSelectionViewModel = CharacterSelectionViewModel()
    @ObservedObject var weatherKitViewModel = WeatherKitViewModel()
    @ObservedObject var locationViewModel = LocationViewModel.shared
    
    var body: some View {
        
        if characterSelectionViewModel.genderType == .none {
            // MARK: 2.성별 선택뷰
            // 데이터에 성별 값이 none으로 되어 있는 경우 성별 선택뷰로 넘어감
            CharaterSelectionView()
            
                .fullScreenCover(isPresented: $isFirstLaunch) {
                    // MARK: 1.온보딩뷰
                    // 첫 실행 시, 온보딩뷰로 넘어감
                    OnboardingView(isFirstLaunch: $isFirstLaunch)
                }
        } else {
            if locationViewModel.userLocation == nil {
                
                if locationViewModel.authorisationStatus != .denied {
                    // MARK: 3. 위치 서비스뷰
                    // 위치 서비스 공유를 아직 묻지 않았을 경우 넘어감
                    AcceptLocationServicesView()
                } else {
                    Text("deniedView")
                }
              
                
            } else if locationViewModel.userLocation != nil {
                VStack {
                    Label(weatherKitViewModel.temp, systemImage: weatherKitViewModel.symbol)
                }
                .task {
                    weatherKitViewModel.getWeather(latitude: locationViewModel.latitude, longitude: locationViewModel.longitude)
                }
            }
           
        }

    }
}

#Preview {
    ContentView()
}
