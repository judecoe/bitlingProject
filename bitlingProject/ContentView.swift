//
//  ContentView.swift
//  bitlingProject
//
//  Created by Jude Gilligan on 10/19/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var showLogo_View = true
    var body: some View {
        ZStack {
            if showLogo_View {
                LogoView()
                    .transition(.opacity.combined(with: .scale))
            }
            if !showLogo_View {
                ScreenView()
                    .transition(.opacity)
            }
        }
                
        
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation(.easeInOut(duration: 1.0)) {
                    showLogo_View = false
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
