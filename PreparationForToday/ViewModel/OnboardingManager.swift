//
//  OnboardingManager.swift
//  PreparationForToday
//
//  Created by 전준수 on 3/19/24.
//

import Foundation
import Combine

final class OnboardingManager: ObservableObject {
    @Published var onboardingList: [Onboarding] = []
    init() {
        fetchOnboardingList()
    }
    
    public func fetchOnboardingList() {
        self.onboardingList = [
            Onboarding(id: 1, systemName: "figure.dress.line.vertical.figure", title:"남녀 간 준비" , content:"외출 시 성별에 따른 준비물을 챙겨보아요!"),
            Onboarding(id: 2, systemName: "cloud.rain.fill", title:"시간별 날씨" , content:"시간을 확인하고 날씨에 따른 외출 준비가 가능합니다."),
            Onboarding(id: 3, systemName: "bus.doubledecker.fill", title:"도시별 준비" , content:"다른 지역의 이동 시에 날씨를 확인하고 외출 준비가 가능합니다."),
            Onboarding(id: 4, systemName: "square.and.arrow.up.fill", title:"친구와 공유" , content:"주변 친구에게 공유하여 준비물을 알려주세요!"),
        ]
    }
    
}
