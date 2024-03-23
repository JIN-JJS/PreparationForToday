//
//  LocationServicesView.swift
//  PreparationForToday
//
//  Created by 전준수 on 3/22/24.
//

import SwiftUI

struct LocationServicesView: View {
    var body: some View {
        Text("LocationServicesView")
    }
}

#Preview {
    TabView(selection: .constant(1),
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
