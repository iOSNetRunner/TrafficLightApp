//
//  CarcassView.swift
//  TrafficLightApp
//
//  Created by Dmitrii Galatskii on 18.07.2023.
//

import SwiftUI

struct CarcassView: View {
    var body: some View {
        Rectangle()
            .frame(maxWidth: 200, idealHeight: 600, maxHeight: 500)
            .foregroundColor(.black)
            .cornerRadius(30)
            .shadow(color: .black, radius: 10)
            .overlay(RoundedRectangle(cornerRadius: 30)
                .stroke(Color(.white), lineWidth: 0.3)
            )
    }
}

struct CarcassView_Previews: PreviewProvider {
    static var previews: some View {
        CarcassView()
    }
}
