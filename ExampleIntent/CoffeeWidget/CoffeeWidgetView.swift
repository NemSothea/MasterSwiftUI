//
//  CoffeeWidgetView.swift
//  ExampleIntent
//
//  Created by NEMSOTHEA on 7/1/25.
//

import SwiftUI
import WidgetKit
import Intents

// MARK: - Widget Views
struct CoffeeWidgetView: View {
    var entry: CoffeeWidgetEntry
    
    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(
                colors: [Color.brown.opacity(0.8), Color.orange.opacity(0.6)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            
            VStack(spacing: 8) {
                // Header
                HStack {
                    Image(systemName: "cup.and.saucer.fill")
                        .foregroundColor(.white)
                        .font(.title2)
                    Text("Coffee Shop")
                        .font(.headline)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    Spacer()
                }
                
                Spacer()
                
                // Quick Actions or Single Action
                if entry.showQuickActions {
                    HStack(spacing: 4) {
                        ForEach(Array(entry.quickActions.enumerated()), id: \.offset) { index, action in
                            Button(intent: action.intent) {
                                VStack(spacing: 4) {
                                    Image(systemName: action.icon)
                                        .font(.system(size: 16))
                                        .foregroundColor(.white)
                                    Text(action.title)
                                        .font(.caption2)
                                        .foregroundColor(.white.opacity(0.9))
                                        .lineLimit(1)
                                }
                            }
                            .buttonStyle(.plain)
                            
                            if index < entry.quickActions.count - 1 {
                                Spacer()
                            }
                        }
                    }
                } else {
                    // Single main action
                    Button(intent: OpenAppIntent()) {
                        HStack {
                            Image(systemName: "cup.and.saucer.fill")
                            Text("Open Coffee Shop")
                                .fontWeight(.medium)
                        }
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .background(Color.white.opacity(0.2))
                        .cornerRadius(20)
                    }
                    .buttonStyle(.plain)
                }
                
                Spacer()
            }
            .padding()
        }
    }
}
