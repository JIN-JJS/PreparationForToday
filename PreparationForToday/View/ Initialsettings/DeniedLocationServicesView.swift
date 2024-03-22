//
//  DeniedLocationServicesView.swift
//  PreparationForToday
//
//  Created by 전준수 on 3/22/24.
//

import SwiftUI

struct DeniedLocationServicesView: View {
    var body: some View {
        VStack {
            
            VStack {
                Text("위치 서비스 설정")
                    .multilineTextAlignment(.center)
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            .frame(width: 350, height: 40)
            .padding(.vertical,48)
            
            
            VStack {
                Text("위치 서비스 사용 권한을 수동으로 허용해주세요.")
                    .font(.headline)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity,alignment: .leading)
                
                Spacer()
                
                Text("1. 설정 > 개인정보 보호 및 보안 > 위치 서비스로 이동")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    .lineLimit(3)
                    .frame(maxWidth: .infinity,alignment: .leading)
                
                Spacer()
                
                Text("2. 위치 서비스가 켜져 있는지 확인합니다.")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    .lineLimit(3)
                    .frame(maxWidth: .infinity,alignment: .leading)
                
                Spacer()
                
                Text("3. 아래로 스크롤하여 앱을 찾습니다.")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    .lineLimit(3)
                    .frame(maxWidth: .infinity,alignment: .leading)
                
                Spacer()
                
                Text("4. 앱을 탭하고 다음과 같은 옵션을 선택합니다.")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    .lineLimit(3)
                    .frame(maxWidth: .infinity,alignment: .leading)
                
                Spacer()
                
                Text("- 안함: 위치 서비스 정보에 대한 접근을 차단합니다.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(3)
                    .frame(maxWidth: .infinity,alignment: .leading)
                
                Spacer()
                
                Text("- 다음번에 묻기 또는 내가 공유할 때: '앱을 사용하는 동안 허용', '한 번 허용' 또는 '허용 안함'을 선택할 수 있습니다.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(3)
                    .frame(maxWidth: .infinity,alignment: .leading)
                
                Spacer()
                
                Text("- 앱을 사용하는 동안: 앱 또는 앱 기능 중 하나가 화면에 표시될 때만 위치 서비스 접근을 허용합니다.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(3)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
            }
            .frame(width: 350, height: 600)
        }
        .padding()
    }
}

#Preview {
    DeniedLocationServicesView()
}
