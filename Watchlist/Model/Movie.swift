//
//  Movie.swift
//  Watchlist
//
//  Created by Swantan Barua on 21/09/25.
//

// MARK: - IMPORTS
import Foundation
import SwiftData

// MARK: - MODEL
@Model
class Movie {
    
    // MARK: - PROPERTIES
    var title: String
    var genre: Genre
    
    // MARK: - INITIALIZATION
    init(
        title: String,
        genre: Genre
    ) {
        self.title = title
        self.genre = genre
    }
}
