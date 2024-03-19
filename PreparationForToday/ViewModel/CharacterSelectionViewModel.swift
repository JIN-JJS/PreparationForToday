//
//  CharacterSelectionViewModel.swift
//  PreparationForToday
//
//  Created by 전준수 on 3/19/24.
//

import Foundation
import SwiftUI

enum GenderType: String {
    case Male = "Male"
    case Female = "Female"
    case none = "None"
}

class CharacterSelectionViewModel: ObservableObject {
    
    @AppStorage("GenderType") var genderType: GenderType = .none
    
    func selectMale() {
        self.genderType = .Male
    }
    
    func selectFemale() {
        self.genderType = .Female
    }
}
