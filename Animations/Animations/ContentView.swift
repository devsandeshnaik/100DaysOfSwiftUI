//
//  ContentView.swift
//  Animations
//
//  Created by Sandesh on 24/03/20.
//  Copyright © 2020 Sandesh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmout = 0.0
    
    var body: some View {
//        Button("Tap Me") {
////            self.animationAmout += 1
//        }
//        .padding(50)
//        .background(Color.red)
//        .foregroundColor(Color.white)
//        .clipShape(Circle())
//        .overlay(
//            Circle()
//                .stroke(Color.red)
//                .scaleEffect(animationAmout)
//                .opacity(Double(2-animationAmout))
//                .animation(
//                    Animation.easeInOut(duration: 1)
//                        .repeatForever(autoreverses: false)
//            )
//
//        )
//            .onAppear {
//                self.animationAmout = 2
//        }
        
//        MARK:- BINDING ANIMATION
//        print(animationAmout)
//        return VStack {
//            Stepper("Scale Amount", value: $animationAmout.animation(
//                Animation.easeInOut(duration: 1)
//                .repeatCount(3, autoreverses: true)
//            ), in:  1...10)
//            Spacer()
//
//            Button("Tap ME") {
//                self.animationAmout += 1
//            }
//            .padding(40)
//            .background(Color.red)
//            .foregroundColor(Color.white)
//            .clipShape(Circle())
//            .scaleEffect(animationAmout)
//        }
        
        Button("Tap ME") {
            withAnimation(.interpolatingSpring(stiffness: 1, damping: 10)) {
                 self.animationAmout += 360
            }
           
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(Color.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmout),
                          axis: (x: 1, y: 0, z: 0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
