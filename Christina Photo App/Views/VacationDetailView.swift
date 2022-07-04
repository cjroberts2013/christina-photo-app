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
        Text("Here")
    }
}

struct VacationDetailView_Previews: PreviewProvider {
    static let vacations: [Vacation] = Bundle.main.decode("vacations.json")
    
    static var previews: some View {
        VacationDetailView(vacation: vacations[0])
    }
}
