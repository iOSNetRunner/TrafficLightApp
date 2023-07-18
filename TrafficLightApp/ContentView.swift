//
//  ContentView.swift
//  TrafficLightApp
//
//  Created by Dmitrii Galatskii on 18.07.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redLight = LightView(color: .red)
    @State private var yellowLight = LightView(color: .yellow)
    @State private var greenLight = LightView(color: .green)
    
    @State private var currentColor: Color = .red
    @State private var tapCount = 0
    @State private var buttonTitle = "START"
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.black.gradient)
                .ignoresSafeArea()
            
            VStack {
                redLight
                yellowLight
                greenLight
                
                Button(action: switchLights) {
                    Text(buttonTitle)
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.black)
                        .frame(width: 200, height: 40)
                        .background(Color.white.gradient)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding()
                }
                .padding(.top, 60)
                
                Label("Tap count: \(tapCount)", systemImage: "hand.tap.fill")
                    .foregroundColor(.white)
                    
            }
            .padding(.top, 40)
        }
    }
    
    
    private func switchLights() {
        if buttonTitle == "START" {
            buttonTitle = "NEXT"
        }
        
        tapCount += 1
        
        switch currentColor {
        case redLight.color:
            greenLight.opacity = isOn(false)
            redLight.opacity = isOn(true)
            currentColor = yellowLight.color
            
        case yellowLight.color:
            redLight.opacity = isOn(false)
            yellowLight.opacity = isOn(true)
            currentColor = greenLight.color
            
        default:
            greenLight.opacity = isOn(true)
            yellowLight.opacity = isOn(false)
            currentColor = redLight.color
        }
    }
    
    private func isOn(_ bool: Bool) -> Double {
        bool == true ? 1.0 : 0.1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
