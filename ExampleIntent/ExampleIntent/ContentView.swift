//
//  ContentView.swift
//  ExampleIntent
//
//  Created by NEMSOTHEA on 6/30/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowDetail: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Click the globe to see the detail..")
            
            if isShowDetail {
                RoundedRectangle(cornerRadius: 10)
                   
                    .foregroundStyle(.green)
                .overlay {
                    Text("This is detail of the globe")
                        .font(.system(.title, design: .monospaced))
                        .foregroundColor(.white)
                }
//                .transition(.offsetScaleOpacity)
                .transition(.offsetScaleAsymmetric)
            }
        }
        .onTapGesture {
            withAnimation(.default) {
                self.isShowDetail.toggle()
            } 
        }
        .userActivity("OpenCoffeeApp") { activity in
            activity.title = "Open Coffee App"
            activity.isEligibleForSearch = true
            activity.isEligibleForPrediction = true
            activity.suggestedInvocationPhrase = "Open Coffee App"
        }
    }
}
extension AnyTransition {
    static var offsetScaleOpacity: AnyTransition {
        AnyTransition.offset(x: -600,y: 0).combined(with: .scale).combined(with: opacity)
    }
    static var offsetScaleAsymmetric : AnyTransition {
        AnyTransition.asymmetric(insertion: .scale(scale: 0,anchor: .bottom), removal: .offset(x: -600,y: 0))
    }
}

#Preview {
    ContentView()
}
