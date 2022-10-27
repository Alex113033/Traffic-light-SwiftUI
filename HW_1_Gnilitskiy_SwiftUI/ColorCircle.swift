//
//  ColorCircle.swift
//  HW_1_Gnilitskiy_SwiftUI
//
//  Created by Александр on 21.07.2022.
//

import SwiftUI

struct ColorCircle: View {
    let colorOne: Color
//    let colorTwo: Color
//    let colorThree: Color
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(colorOne)
                .frame(width: 100, height: 100)
                .shadow(color: colorOne, radius: 15)
        }
        .offset(x: 0, y: -80)

    }
}


struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(colorOne: .red)
    }
}
