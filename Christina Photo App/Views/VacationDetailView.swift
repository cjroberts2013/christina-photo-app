//
//  VacationDetailView.swift
//  Christina Photo App
//
//  Created by Charles Roberts on 7/3/22.
//

import SwiftUI

struct VacationDetailView: View {
    
    let vacation: Vacation
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            VStack (alignment: .center, spacing: 20) {
                Image(vacation.image)
                    .resizable()
                    .scaledToFit()
                
                Text(vacation.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical,  8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                Text(vacation.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                Group {
//                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsetGalleryView(vacation: vacation)
                }
                .padding(.horizontal)
                
                
                // Description
//                Group {
//                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
//
//                    Text(animal.description)
//                        .multilineTextAlignment(.leading)
//                        .layoutPriority(1)
//                }
//                .padding(.horizontal)
                
                // Map
//                Group {
//                    HeadingView(headingImage: "map", headingText: "National Parks")
//
//                    InsetMapView()
//                }
//                .padding(.horizontal)
                
            }
            .navigationBarTitle("\(vacation.name)", displayMode: .inline)
        }
    }
}

struct VacationDetailView_Previews: PreviewProvider {
    static let vacations: [Vacation] = Bundle.main.decode("vacations.json")
    
    static var previews: some View {
        VacationDetailView(vacation: vacations[0])
    }
}
