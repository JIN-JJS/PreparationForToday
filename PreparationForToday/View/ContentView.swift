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
    
    var body: some View {
        
        if characterSelectionViewModel.genderType == .none {
            CharaterSelectionView()
                .fullScreenCover(isPresented: $isFirstLaunch) {
                    OnboardingView(isFirstLaunch: $isFirstLaunch)
                }
        } else {
            VStack {
                Text("메인뷰")
            }
           
        }

    }
}

#Preview {
    ContentView()
}
