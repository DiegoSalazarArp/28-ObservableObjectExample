//
//  UserSettings.swift
//  28-ObservableObjectExample
//
//  Created by Diego Salazar Arp on 15-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class UserSettings: ObservableObject {
    
    @Published var score: Int = 0
}
