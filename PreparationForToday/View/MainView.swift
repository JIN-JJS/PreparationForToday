//
//  MainView.swift
//  PreparationForToday
//
//  Created by 전준수 on 3/22/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        TabView(selection: .constant(2),
                content:  {
            LocationServicesView()
                .tabItem {
                    Image(systemName: "paperplane.circle")
                    Text("위치")
                }
                .tag(1)
            
            WeatherServicesView()
                .tabItem {
                    Image(systemName: "sun.max.fill")
                    Text("날씨")
                }
                .tag(2)
            
            SettingServicesView()
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("설정")
                }
                .tag(3)
        })
    }
}

#Preview {
    MainView()
}
