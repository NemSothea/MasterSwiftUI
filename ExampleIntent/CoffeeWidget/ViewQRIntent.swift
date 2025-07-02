//
//  ViewQRIntent.swift
//  ExampleIntent
//
//  Created by NEMSOTHEA on 7/1/25.
//
import SwiftUI
import WidgetKit
import AppIntents

struct ViewQRIntent: AppIntent {
    static var title: LocalizedStringResource = "View QR Code"
    static var description = IntentDescription("Open QR code scanner")
    static var openAppWhenRun: Bool = true
    
    func perform() async throws -> some IntentResult {
        return .result()
    }
}
