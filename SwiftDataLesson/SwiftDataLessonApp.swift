//
//  SwiftDataLessonApp.swift
//  SwiftDataLesson
//
//  Created by Круглич Влад on 21.04.24.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataLessonApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: DataItem.self)
    }
}
