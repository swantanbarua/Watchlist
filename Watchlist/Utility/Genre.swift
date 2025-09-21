//
//  Genre.swift
//  Watchlist
//
//  Created by Swantan Barua on 21/09/25.
//

import Foundation

enum Genre: Int, Codable, CaseIterable, Identifiable {
    
    // MARK: - PROPERTIES
    var id: Int {
        rawValue
    }
    
    // MARK: - CASES
    case action = 1
    case comedy = 2
    case crime = 3
    case documentary = 4
    case drama = 5
    case fantasy = 6
    case kids = 7
    case musical = 8
    case scifi = 9
    case romance = 10
    case thriller = 11
    case western = 12
}

extension Genre {
    
    // MARK: - PROPERTIES
    var name: String {
        switch self {
            
        case .action:
            "Action"
            
        case .comedy:
            "Comedy"
            
        case .crime:
            "Crime"
            
        case .documentary:
            "Documentary"
            
        case .drama:
            "Drama"
            
        case .fantasy:
            "Fantasy"
            
        case .kids:
            "Kids"
            
        case .musical:
            "Musical"
            
        case .romance:
            "Romance"
            
        case .scifi:
            "Sci-Fi"
            
        case .thriller:
            "Thriller"
            
        case .western:
            "Western"
        }
    }
}
