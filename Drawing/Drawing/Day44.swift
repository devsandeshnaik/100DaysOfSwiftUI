//
//  Day44.swift
//  Drawing
//
//  Created by Sandesh on 16/05/20.
//  Copyright © 2020 sandesh. All rights reserved.
//

import SwiftUI

struct Day44: View {
    
    @State private var amount: CGFloat = 0.0
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(Color(red: 1, green: 0, blue: 0))
                    .frame(width: 200 * amount)
                    .offset(x: -50, y: -80)
                    .blendMode(.screen)
                
                Circle()
                    .fill(Color(red: 0, green: 1, blue: 0))
                    .frame(width: 200 * amount)
                    .offset(x: 50, y: -80)
                    .blendMode(.screen)
                
                Circle()
                    .fill(Color(red: 0, green: 0, blue: 1))
                    .frame(width: 200 * amount)
                    .blendMode(.screen)
            }
            .frame(width: 300, height: 300)
            
            Slider(value: $amount)
            
            Image("sandesh")
                .resizable()
            .scaledToFit()
                .frame(width: 100, height: 100)
                //.saturation(Double(amount))
                .blur(radius: (1 - amount)*20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct Day44_Previews: PreviewProvider {
    static var previews: some View {
        Day44()
    }
}
