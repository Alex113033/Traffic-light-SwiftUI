//
//  ContentView.swift
//  HW_1_Gnilitskiy_SwiftUI
//
//  Created by Александр on 21.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonText = "START"
    @State private var glowRed = 0.3
    @State private var glowYellow = 0.3
    @State private var glowGreen = 0.3
    @State private var indexSwitch = 1
    
    var body: some View {
        VStack {
            ColorCircle(colorOne: .red.opacity(glowRed))
            ColorCircle(colorOne: .yellow.opacity(glowYellow))
            ColorCircle(colorOne: .green.opacity(glowGreen))
            
//            Button(buttonText) {
//                switchColor()
//            }
            
            Button(action: {
                switchColor()
            }){
                Text("\(buttonText)")
                    .font(.title)
            }
            .offset(x: 0, y: 40)
        }
    }
    
    private func switchColor (){
        buttonText = "NEXT"
        if indexSwitch == 1 {
            glowRed = 1.0
            glowYellow = 0.3
            glowGreen = 0.3
            indexSwitch = 2
        } else if indexSwitch == 2 {
            glowRed = 0.3
            glowYellow = 1.0
            glowGreen = 0.3
            indexSwitch = 3
        } else if indexSwitch == 3 {
            glowRed = 0.3
            glowYellow = 0.3
            glowGreen = 1.0
            indexSwitch = 1
        }
    }
}



struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
