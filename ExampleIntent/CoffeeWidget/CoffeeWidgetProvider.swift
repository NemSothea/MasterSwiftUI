//
//  CoffeeWidgetProvider.swift
//  ExampleIntent
//
//  Created by NEMSOTHEA on 7/1/25.
//
import SwiftUI
import WidgetKit
import AppIntents

// MARK: - Widget Provider
struct CoffeeWidgetProvider: TimelineProvider {
    typealias Entry = CoffeeWidgetEntry
    
    func placeholder(in context: Context) -> CoffeeWidgetEntry {
        CoffeeWidgetEntry(date: Date(), showQuickActions: true)
    }
    
    func getSnapshot(in context: Context, completion: @escaping (CoffeeWidgetEntry) -> ()) {
        let entry = CoffeeWidgetEntry(date: Date(), showQuickActions: true)
        completion(entry)
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<CoffeeWidgetEntry>) -> ()) {
        let currentDate = Date()
        let entry = CoffeeWidgetEntry(date: currentDate, showQuickActions: true)
        
        let nextUpdate = Calendar.current.date(byAdding: .hour, value: 1, to: currentDate)!
        let timeline = Timeline(entries: [entry], policy: .after(nextUpdate))
        completion(timeline)
    }
}
