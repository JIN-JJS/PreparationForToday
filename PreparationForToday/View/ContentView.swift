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
            CharaterSelectionView()
                .fullScreenCover(isPresented: $isFirstLaunch) {
                    OnboardingView(isFirstLaunch: $isFirstLaunch)
                }
        } else {
            if locationViewModel.userLocation == nil {
                AcceptLocationServicesView()
                
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
