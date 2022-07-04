//
//  VacationListItemView.swift
//  Christina Photo App
//
//  Created by Charles Roberts on 7/3/22.
//

import SwiftUI

struct VacationListItemView: View {
    let vacation: Vacation
    
    var body: some View {
        HStack (alignment: .center, spacing: 16) {
            Image(vacation.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            
            VStack (alignment: .leading, spacing: 8) {
                Text(vacation.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(vacation.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
        }
    }
}

struct VacationListItemView_Previews: PreviewProvider {
    static let vacations: [Vacation] = Bundle.main.decode("vacations.json")
    
    static var previews: some View {
        VacationListItemView(vacation: vacations[0])
    }
}
