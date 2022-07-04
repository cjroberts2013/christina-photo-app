//
//  ContentView.swift
//  Christina Photo App
//
//  Created by Charles Roberts on 7/3/22.
//

import SwiftUI

struct ContentView: View {
    
    let vacations: [Vacation] = Bundle.main.decode("vacations.json")
    
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(vacations) { vacation in
                    NavigationLink(destination: VacationDetailView(vacation: vacation)) {
                        VacationListItemView(vacation: vacation)
                    }
                }
            }
            .navigationBarTitle("Memories", displayMode: .large)
            .listStyle(.plain)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
