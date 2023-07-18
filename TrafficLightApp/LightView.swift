//
//  LightView.swift
//  TrafficLightApp
//
//  Created by Dmitrii Galatskii on 18.07.2023.
//

import SwiftUI

struct LightView: View {
    let color: Color
    var opacity = 0.1
    
    var body: some View {
        Circle()
            .fill(color.gradient)
            .overlay(Circle().strokeBorder(color, lineWidth: 1))
            .shadow(color: color, radius: 40)
            .shadow(color: color, radius: 10)
            .padding()
            .opacity(opacity)
    }
}

struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(color: .red)
    }
}
