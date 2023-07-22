//
//  ContentView.swift
//  TrafficLightApp
//
//  Created by Dmitrii Galatskii on 18.07.2023.
//

import SwiftUI

struct ContentView: View {
    private let lightCarcass = CarcassView()
    
    @State private var currentColor: Color = .black
    @State private var buttonTitle = "START"
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.black.gradient)
                .ignoresSafeArea()
            
            VStack {
                ZStack {
                    lightCarcass
                        .shadow(color: .black, radius: 10)
                    
                    VStack {
                        ColorCircleView(color: .red,
                                        opacity: currentColor == .red ? 1 : 0.1)
                        .padding()
                        ColorCircleView(color: .yellow,
                                        opacity: currentColor == .yellow ? 1 : 0.1)
                        .padding()
                        ColorCircleView(color: .green,
                                        opacity: currentColor == .green ? 1 : 0.1)
                        .padding()
                    }
                }
                
                Button(action: switchLights) {
                    Text(buttonTitle)
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.black)
                        .frame(width: 200, height: 40)
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding()
                }
                .padding(.top, 30)
                
                
            }
            .padding(.top, 40)
            .padding(.bottom, 20)
        }
        
    }
    
    private func switchLights() {
        if buttonTitle == "START" {
            buttonTitle = "NEXT"
        }
        
        switch currentColor {
        case .red:
            currentColor = .yellow
        case .yellow:
            currentColor = .green
        default:
            currentColor = .red
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
