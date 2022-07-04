//
//  VacationModel.swift
//  Christina Photo App
//
//  Created by Charles Roberts on 7/3/22.
//

import Foundation

struct Vacation: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let image: String
    let gallery: [String]
}
