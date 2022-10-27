//
//  ButtonSwitching.swift
//  HW_1_Gnilitskiy_SwiftUI
//
//  Created by Александр on 27.10.2022.
//

import SwiftUI

struct ButtonSwitching: View {
    let text: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action){
            Text(text)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
        }
        .offset(x: 0, y: 40)
    }
}

struct ButtonSwitching_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSwitching(text: "Button", action: {})
    }
}
