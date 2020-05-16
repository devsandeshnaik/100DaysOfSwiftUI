//
//  SwiftUIView.swift
//  Drawing
//
//  Created by Sandesh on 08/05/20.
//  Copyright © 2020 sandesh. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Text("Hello World")
        .frame(width: 300, height: 300)
        .background(Image("Example"))
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
