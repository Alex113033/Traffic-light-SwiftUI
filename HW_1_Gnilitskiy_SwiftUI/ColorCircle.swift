//
//  ColorCircle.swift
//  HW_1_Gnilitskiy_SwiftUI
//
//  Created by Александр on 21.07.2022.
//

import SwiftUI

struct ColorCircle: View {
    
    let color: Color
    let opacity: Double

    var body: some View {
        VStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 100, height: 100)
                .shadow(color: color, radius: 15)
                .opacity(opacity)
        }
        .offset(x: 0, y: -80)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacity: 0.3)
    }
}
