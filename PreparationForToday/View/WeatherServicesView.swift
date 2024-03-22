//
//  WeatherServicesView.swift
//  PreparationForToday
//
//  Created by 전준수 on 3/22/24.
//

import SwiftUI

struct WeatherServicesView: View {
    @ObservedObject var weatherKitViewModel = WeatherKitViewModel()
    @ObservedObject var locationViewModel = LocationViewModel.shared
    
    var body: some View {
        VStack {
            Label(weatherKitViewModel.temp, systemImage: weatherKitViewModel.symbol)
        }
        .task {
            weatherKitViewModel.getWeather(latitude: locationViewModel.latitude, longitude: locationViewModel.longitude)
        }
    }
}

#Preview {
    WeatherServicesView()
}
