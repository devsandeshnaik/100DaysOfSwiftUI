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
    @State private var isShowingImagePicker: Bool = false
    @State private var inputUIImage: UIImage?
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
            
            Button("Select Image") {
                self.isShowingImagePicker = true
            }
        }
        .sheet(isPresented: $isShowingImagePicker, onDismiss: loadImage) {
            ImagePicker(image: $inputUIImage)
        }
    }
    
    func loadImage() {
        guard let inputImage = inputUIImage else { return }
        image = Image(uiImage: inputImage)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
