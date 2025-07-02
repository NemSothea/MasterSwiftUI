//
//  CoffeeWidgetEntry.swift
//  ExampleIntent
//
//  Created by NEMSOTHEA on 7/1/25.
//

import SwiftUI
import WidgetKit
import Intents

// MARK: - Widget Entry
struct CoffeeWidgetEntry: TimelineEntry {
    let date: Date
    let quickActions: [QuickAction]
    let showQuickActions: Bool
    
    init(date: Date, showQuickActions: Bool = true, quickActions: [QuickAction] = []) {
        self.date = date
        self.showQuickActions = showQuickActions
        self.quickActions = quickActions.isEmpty ? Self.getDefaultQuickActions() : quickActions
    }
    
    static func getDefaultQuickActions() -> [QuickAction] {
        return [
            QuickAction(title: "Order", icon: "cup.and.saucer.fill", intent: QuickOrderIntent()),
            QuickAction(title: "QR", icon: "qrcode", intent: ViewQRIntent()),
            QuickAction(title: "Open", icon: "app.fill", intent: OpenAppIntent())
        ]
    }
}
