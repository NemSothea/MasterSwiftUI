//
//  CoffeeWidgetConfigurationIntent.swift
//  ExampleIntent
//
//  Created by NEMSOTHEA on 7/1/25.
//
import SwiftUI
import WidgetKit
import AppIntents

// MARK: - Widget Configuration Intent
struct CoffeeWidgetConfigurationIntent: WidgetConfigurationIntent {
    static var title: LocalizedStringResource = "Coffee Widget"
    static var description = IntentDescription("Configure your coffee widget")
    
    @Parameter(title: "Show Quick Actions", default: true)
    var showQuickActions: Bool?
    
    @Parameter(title: "Default Coffee", default: "Latte")
    var defaultCoffee: String?
}
