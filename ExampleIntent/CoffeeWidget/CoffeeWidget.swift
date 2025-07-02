//
//  OpenAppIntent.swift
//  ExampleIntent
//
//  Created by NEMSOTHEA on 6/30/25.
//


import SwiftUI
import WidgetKit
import AppIntents


// MARK: - Widget Configuration
struct CoffeeWidget: Widget {
    let kind: String = "CoffeeWidget"
    
    var body: some WidgetConfiguration {
        
        StaticConfiguration(kind: kind, provider: CoffeeWidgetProvider()) {  entry in
                        CoffeeWidgetView(entry: entry)
                                        .containerBackground(.fill.tertiary, for: .widget)
        }
        .configurationDisplayName("Coffee Shop")
            .description("Quick access to your favorite coffee orders")
            .supportedFamilies([.systemSmall, .systemMedium])
    }
}
