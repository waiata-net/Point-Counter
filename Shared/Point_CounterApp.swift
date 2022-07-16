//
//  Point_CounterApp.swift
//  Shared
//
//  Created by Neal Watkins on 2022/7/16.
//

import SwiftUI

@main
struct Point_CounterApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: Point_CounterDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
