//
//  DataItem.swift
//  SwiftDataLesson
//
//  Created by Круглич Влад on 21.04.24.
//

import Foundation
import SwiftData
@Model 
class DataItem: Identifiable {
    var id: String
    var name: String
    var surname: String
    
    init(name: String, surname: String) {
        self.id = UUID().uuidString
        self.name = name
        self.surname = surname
    }
}
