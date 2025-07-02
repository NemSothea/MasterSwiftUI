//
//  QuickOrderIntent.swift
//  ExampleIntent
//
//  Created by NEMSOTHEA on 7/1/25.
//

import SwiftUI
import WidgetKit
import AppIntents

struct QuickOrderIntent: AppIntent {
    
    static var title: LocalizedStringResource = "Quick Order"
    static var description = IntentDescription("Place a quick coffee order")
    static var openAppWhenRun: Bool = true
    
    @Parameter(title: "Coffee Type")
    var coffeeType: String?
    
    func perform() async throws -> some IntentResult {
        // Handle quick order logic
        return .result()
    }
}
