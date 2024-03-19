//
//  OnBoarding.swift
//  PreparationForToday
//
//  Created by 전준수 on 3/19/24.
//

import Foundation

struct OnboardingModel: Identifiable, Hashable {
    var id: Int
    var systemName: String = ""
    var title: String = ""
    var content: String = ""
}
