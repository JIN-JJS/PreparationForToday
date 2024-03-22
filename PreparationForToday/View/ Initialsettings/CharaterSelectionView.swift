//
//  CharaterSelectionView.swift
//  PreparationForToday
//
//  Created by 전준수 on 3/19/24.
//

import SwiftUI

struct CharaterSelectionView: View {
    @StateObject var characterSelectionViewModel = CharacterSelectionViewModel()
    
    // 성별 선택을 위한 변수
    @State var genderNumber: Int = 2
    
    var body: some View {
        
        
        VStack {
            
            VStack {
                Text("성별")
                    .multilineTextAlignment(.center)
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            .frame(width: 350, height: 40)
            .padding(.vertical,48)
            
            Spacer()
            
            VStack {
                
                HStack {
                    if genderNumber == 0 {
                        Image(systemName: "mustache.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.brown)
                            .frame(width:200,height: 200)
                    } else if genderNumber == 1 {
                        Image(systemName: "mouth.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.red)
                            .frame(width:200,height: 200)
                    } else if genderNumber == 2 {
                        VStack {}
                            .frame(width:200,height: 200)
                    }
                }
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    Button {
                        genderNumber = 0
                    } label: {
                        Text("Male")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Button {
                        genderNumber = 1
                    } label: {
                        Text("Female")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                }
                .frame(width: 350)
                .padding()
                
                Spacer()
                
                HStack {
                    if genderNumber == 0 || genderNumber == 1 {
                        Button{
                            if genderNumber == 0 {
                                characterSelectionViewModel.selectMale()
                            } else if genderNumber == 1 {
                                characterSelectionViewModel.selectFemale()
                            }
                        } label: {
                            Text("선택하기")
                                .fontWeight(.bold)
                                .padding(.horizontal)
                                .padding(.vertical, 6)
                                .frame(maxWidth: 330)
                        }
                        .buttonStyle(.borderedProminent)
                    }
                }
                .frame(width: 350, height: 70)
                
            }
            .frame(width: 350, height: 600)
        }
        .padding()
    }
}

#Preview {
    CharaterSelectionView()
}
