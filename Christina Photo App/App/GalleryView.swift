//
//  GalleryView.swift
//  Christina Photo App
//
//  Created by Charles Roberts on 7/3/22.
//

import SwiftUI

struct GalleryView: View {
    
    @State private var selectedImage: String = "on-2"
    
    let images: [CoverImage] = Bundle.main.decode("gallery.json")
    let haptic = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var gridLayout: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    var body: some View {
        VStack (spacing: 20) {
            Image(selectedImage)
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack (alignment: .center, spacing: 30) {
                    
                    LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                        ForEach(images) { image in
                            Image(image.name)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(8)
                                .onTapGesture {
                                    selectedImage = image.name
                                    haptic.impactOccurred()
                                }
                        }
                    }
    //                .animation(.easeIn)
    //                .onAppear {
    //                    gridSwitch()
    //                }
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 15)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    //        .background(MotionAnimationView())
        }
//        ScrollView(.vertical, showsIndicators: false) {
//            VStack (alignment: .center, spacing: 30) {
//                Image(selectedImage)
//                    .resizable()
//                    .scaledToFit()
//                    .cornerRadius(12)
//
//                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
//                    ForEach(images) { image in
//                        Image(image.name)
//                            .resizable()
//                            .scaledToFit()
//                            .cornerRadius(8)
//                            .onTapGesture {
//                                selectedImage = image.name
//                                haptic.impactOccurred()
//                            }
//                    }
//                }
////                .animation(.easeIn)
////                .onAppear {
////                    gridSwitch()
////                }
//            }
//            .padding(.horizontal, 10)
//            .padding(.vertical, 15)
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
////        .background(MotionAnimationView())
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
