//
//  ContentView.swift
//  HW_1_Gnilitskiy_SwiftUI
//
//  Created by Александр on 21.07.2022.
//

import SwiftUI

enum ColorLight {
    case red, yellow, green, off
}

struct ContentView: View {
    @State private var colorLight = ColorLight.off
    @State private var buttonText = "START"    
    
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack {
                
                ColorCircle(color: .red, opacity: colorLight == .red ? 1 : 0.3)
                ColorCircle(color: .yellow, opacity: colorLight == .yellow ? 1 : 0.3)
                ColorCircle(color: .green, opacity: colorLight == .green ? 1 : 0.3)
                
                ButtonSwitching(text: buttonText) {
                    buttonText = "NEXT"
                    updateSwitch()
                }
            }
        }
    }
    
   private func updateSwitch (){
        switch colorLight {
        case .red:
            colorLight = .yellow
        case .yellow:
            colorLight = .green
        case .green:
            colorLight = .red
        case .off:
            colorLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
