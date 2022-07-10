//
//  InsertGalleryView.swift
//  Christina Photo App
//
//  Created by Charles Roberts on 7/10/22.
//

import SwiftUI

struct InsetGalleryView: View {
    
    let vacation: Vacation
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack (alignment: .center, spacing: 15) {
                ForEach(vacation.gallery.shuffled(), id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            }
        }
        .padding(.bottom, 20)
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static let vacations: [Vacation] = Bundle.main.decode("vacations.json")
    
    static var previews: some View {
        InsetGalleryView(vacation: vacations[3])
    }
}
