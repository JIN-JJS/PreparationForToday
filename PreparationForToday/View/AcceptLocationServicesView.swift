//
//  AcceptLocationServicesView.swift
//  PreparationForToday
//
//  Created by 전준수 on 3/19/24.
//

import SwiftUI

struct AcceptLocationServicesView: View {
    @ObservedObject var weatherKitViewModel = WeatherKitViewModel()
    
    var body: some View {
        VStack {
            
            VStack {
                Text("위치 서비스")
                    .multilineTextAlignment(.center)
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            .frame(width: 350, height: 40)
            .padding(.vertical,48)
            
            Spacer()
            
            VStack {
                
                Spacer()
                
                HStack {
                    
                    Image(systemName: "location.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.blue)
                        .frame(width:150,height: 150)
                    
                }
                
                Spacer()
                
                HStack {
                    Text("위치 서비스를 켜 자동으로 현재 위치의 날씨 정보를 받으세요.")
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity,alignment: .center)
                }
                .frame(width: 350)
                .padding()
                
                Spacer()
                
                HStack {
                    
                    Button{
                        LocationViewModel.shared.requestLocation()
                    } label: {
                        Text("확인")
                            .fontWeight(.bold)
                            .padding(.horizontal)
                            .padding(.vertical, 6)
                            .frame(maxWidth: 330)
                    }
                    .buttonStyle(.borderedProminent)
                    
                }
                .frame(width: 350, height: 70)
                
            }
            .frame(width: 350, height: 600)
        }
        .padding()
    }
}

#Preview {
    AcceptLocationServicesView()
}
