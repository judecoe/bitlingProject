//
//  LogoView.swift
//  bitlingProject
//
//  Created by Matthew Davis on 11/3/24.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        VStack {
            Image("uhlogo")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
            
                .shadow(radius: 70) // optional shadow to add depth
                .frame(width: 200, height: 200)// adjust size as needed
           
            Text("SteelStride")
                .font(.system(size: 24, weight: .bold, design: .monospaced))
        }
    }
}

#Preview {
    LogoView()
}
