//
//  ScreenView.swift
//  bitlingProject
//
//  Created by Matthew Davis on 11/3/24.
//

import SwiftUI

struct ScreenView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor(red:169/255, green: 204/255, blue: 139/255, alpha: 1.0) // UIKit integration for background color
    }
    var body: some View {
        ZStack(alignment: .topLeading) {
            //TabView Structure with tabs leading to all relevant pages
            TabView {
                DashView()
                    .tabItem {
                        Label("Dashboard", systemImage: "square.grid.2x2")
                            .font(.system(size: 24))
                    }
                    
                        
                MapView()
                    .tabItem {
                        Label("Map", systemImage: "map")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                    }
                    
                //Placeholder for the + button so formatting is nice
                Text("")
                    .tabItem {
                        Image(systemName: "") // Empty image to keeplayout correct
                            .font(.system(size: 24))
                    }
                
                                
                                
                TrailsView()
                    .tabItem{
                        Label("Trails", systemImage: "figure.walk")
                    }
                    
                                
                SettingsView()
                    .tabItem {
                        Label("Settings", systemImage: "gearshape.fill")
                    }
                    
            }
            .accentColor(.black)//Specifies color of current tab button
            
                
                
                
            VStack {
                HStack(alignment: .top) {
                    //Top-lefo logo embedded in V & H Stack
                    Image("uhlogo")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 40, height: 40)
                        .padding(.leading, 20)
                        .padding(.top, 20)
                    
                    Spacer()
                }
                
                
                Spacer()
                        
                Button(action: {
                            // Define what happens when the "+" button is tapped
                }) {
                    Image(systemName: "plus")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .padding()
                        .background(Circle().fill(Color(red:18/255, green: 36/255, blue: 36/255)))
                        .shadow(radius: 5)
                    }
                   
            }
            
        }
    }
}

#Preview {
    ScreenView()
}
