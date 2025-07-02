//
//  FancyButton.swift
//  ExampleIntent
//
//  Created by NEMSOTHEA on 7/1/25.
//

import SwiftUI

struct FancyButton: View {
    @State private var isLoading    : Bool = false
    @State private var isProcessing : Bool = false
    @State private var isCompleted  : Bool = false
    
    var body: some View {
        VStack {
            
            Button {
                // Action here
                Processing()
            } label : {
                
                HStack {
                    if self.isLoading {
                        Text("Processing...")
                            .transition(.opacity)
                    }else if self.isCompleted {
                        Text("Done")
                            .transition(.move(edge: .leading).combined(with: .opacity))
                    }else {
                        Text("Submit")
                            .transition(.opacity)
                    }
                    
                }
                .animation(.easeOut(duration: 0.3),value: isLoading || isCompleted)
                
                .padding()
                .font(.system(.title3, design: .rounded))
                .bold()
                .foregroundStyle(.white)
                .background(Color.green,in: RoundedRectangle(cornerRadius: 30,style: .continuous))
                
            }
            .disabled( isProcessing || isCompleted)

        }
        
        
    }
    private func Processing() {
        
        self.isLoading = true
       
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.isCompleted = true
            self.isLoading = false
            self.isProcessing = false
        }
    }
}
extension AnyTransition {
    
}

#Preview {
    FancyButton()
}
