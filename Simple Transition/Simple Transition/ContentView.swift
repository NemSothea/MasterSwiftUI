//
//  ContentView.swift
//  Simple Transition
//
//  Created by NEMSOTHEA on 6/30/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showDetail = false
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 300,height: 300)
                .foregroundStyle(.green)
                .overlay {
                    Text("Show detail")
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                        .foregroundStyle(.white)
                        .padding()
                }
               
            if showDetail {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 300,height: 300)
                    .foregroundStyle(.purple)
                    .overlay {
                        Text("Well, here is the detail")
                            .font(.system(.largeTitle, design: .rounded))
                            .bold()
                            .foregroundStyle(.white)
                            .padding()
                    }
                    .transition(.scale(scale: 0, anchor: .bottom))
            }
            
        }
        
        .onTapGesture {
            withAnimation(.default) {
                self.showDetail.toggle()
            }
        }
    }
}

#Preview {
    ContentView()
}
