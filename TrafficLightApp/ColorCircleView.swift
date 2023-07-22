//
//  ColorCircleView.swift
//  TrafficLightApp
//
//  Created by Dmitrii Galatskii on 18.07.2023.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .fill(color.gradient)
            .frame(width: 150)
            .overlay(Circle().strokeBorder(color, lineWidth: 1))
            .shadow(color: color, radius: 40)
            .shadow(color: color, radius: 10)
            .opacity(opacity)
            .saturation(1.3)
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, opacity: 0.3)
    }
}
