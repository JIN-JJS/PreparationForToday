//
//  OnboardingView.swift
//  PreparationForToday
//
//  Created by 전준수 on 3/19/24.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var isFirstLaunch: Bool
    @StateObject var onboardingViewModel: OnboardingViewModel = .init()
    
    var body: some View {
        VStack{
                   VStack{
                       Text("외출 준비를 해볼까요?")
                           .multilineTextAlignment(.center)
                           .font(.largeTitle)
                           .fontWeight(.bold)
                   }
                   .padding(.vertical,48)
                   
                   VStack(spacing:30){
                       
                       ForEach(onboardingViewModel.OnboardingModelList){ index in
                           HStack{
                               Image(systemName: "\(index.systemName)")
                                   .resizable()
                                   .scaledToFit()
                                   .foregroundColor(.accentColor)
                                   .frame(width:40,height: 40)
                                   .padding(8)
                               
                               VStack{
                                   Text("\(index.title)")
                                       .font(.headline)
                                       .fontWeight(.bold)
                                       .frame(maxWidth: .infinity,alignment: .leading)
                                       .padding(.bottom,0.25)
                                   Text("\(index.content)")
                                       .font(.subheadline)
                                       .foregroundColor(.gray)
                                       .lineLimit(3)
                                       .frame(maxWidth: .infinity,alignment: .leading)
                               }
                           }.padding(.horizontal, 16)
                       }
                       Spacer()
                       
                       
                       Button{
                           isFirstLaunch = false
                       } label: {
                           Text("시작하기")
                               .fontWeight(.bold)
                               .padding(.horizontal)
                               .padding(.vertical, 6)
                               .frame(maxWidth: 330)
                       }
                       .buttonStyle(.borderedProminent)
                       .padding(.bottom,24)
                   }
               }.padding()
    }
}

#Preview {
    OnboardingView(isFirstLaunch: .constant(false))
}
