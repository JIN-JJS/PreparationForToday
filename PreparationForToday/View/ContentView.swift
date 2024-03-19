//
//  ContentView.swift
//  PreparationForToday
//
//  Created by 전준수 on 3/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("isFirstLaunch") var isFirstLaunch: Bool = true
    
    var body: some View {
        VStack {
            Text("메인뷰")
        }
        .fullScreenCover(isPresented: $isFirstLaunch) {
            OnboardingView(isFirstLaunch: $isFirstLaunch)
        }
    }
}

#Preview {
    ContentView()
}
