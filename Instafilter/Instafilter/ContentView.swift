//
//  ContentView.swift
//  Instafilter
//
//  Created by Sandesh on 20/09/20.
//

import CoreImage
import CoreImage.CIFilterBuiltins
import SwiftUI

struct ContentView: View {
    @State private var image: Image?
    @State private var isImagePickerShown = false
    
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
            
            Button("Select Image") {
                isImagePickerShown = true
            }
        }
        .sheet(isPresented: $isImagePickerShown, content: {
            ImagePicker()
        })
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
