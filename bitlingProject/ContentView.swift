//
//  ContentView.swift
//  bitlingProject
//
//  Created by Jude Gilligan on 10/19/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    let manager = CLLocationManager()
    var body: some View {
        ZStack{
            Map()
                .mapControls {
                    MapScaleView()
                    MapUserLocationButton()
                }
                .onAppear{
                    manager.requestWhenInUseAuthorization()
                }
                }
    }
}


#Preview {
    ContentView()
}
