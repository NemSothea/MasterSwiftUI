//
//  ExampleIntentApp.swift
//  ExampleIntent
//
//  Created by NEMSOTHEA on 6/30/25.
//

import SwiftUI
import AppIntents

@main
struct ExampleIntentApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
extension ExampleIntentApp {
    static var appShortcuts: [AppShortcut] {
           return [
               AppShortcut(
                   intent: OpenAppIntent(),
                   phrases: [
                       "Open ${applicationName}",
                       "Launch ${applicationName}"
                   ],
                   shortTitle: LocalizedStringResource("Open App"),
                   systemImageName: "app.fill"
               ),
               AppShortcut(
                   intent: QuickOrderIntent(),
                   phrases: [
                       "Order coffee with ${applicationName}",
                       "Quick order ${applicationName}"
                   ],
                   shortTitle: LocalizedStringResource("Quick Order"),
                   systemImageName: "cup.and.saucer.fill"
               )
           ]
       }
}
