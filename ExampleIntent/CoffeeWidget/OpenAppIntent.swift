//
//  OpenAppIntent 2.swift
//  ExampleIntent
//
//  Created by NEMSOTHEA on 7/1/25.
//
import SwiftUI
import WidgetKit
import AppIntents

// MARK: - App Intents for Widget Actions
struct OpenAppIntent: AppIntent {
    
    static var title: LocalizedStringResource = "Open Coffee App"
    static var description = IntentDescription("Opens the coffee ordering app")
    static var openAppWhenRun: Bool = true
    
    func perform() async throws -> some IntentResult {
        return .result()
    }
}
