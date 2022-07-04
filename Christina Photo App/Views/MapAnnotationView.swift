//
//  MapAnnotationView.swift
//  Christina Photo App
//
//  Created by Charles Roberts on 7/3/22.
//

import SwiftUI

struct MapAnnotationView: View {
    
    var location: Location
    
    @State private var animation: Double = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 30, height: 30, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            

            Image(systemName: "heart.fill")
                .foregroundColor(.accentColor)
                .scaledToFit()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
        }
        .onAppear {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    static var locations: [Location] = Bundle.main.decode("locations.json")
    
    static var previews: some View {
        MapAnnotationView(location: locations[0])
    }
}
