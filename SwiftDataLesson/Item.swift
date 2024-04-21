//
//  Item.swift
//  SwiftDataLesson
//
//  Created by Круглич Влад on 21.04.24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
