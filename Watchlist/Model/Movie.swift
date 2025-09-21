//
//  Movie.swift
//  Watchlist
//
//  Created by Swantan Barua on 21/09/25.
//

import Foundation
import SwiftData

@Model
class Movie {
    
    // MARK: - PROPERTIES
    var title: String
    var genre: Genre
    
    @MainActor
    static var preview: ModelContainer {
        let container = try! ModelContainer(
            for: Movie.self,
            configurations: ModelConfiguration(isStoredInMemoryOnly: true)
        )
        
        return container
    }
    
    // MARK: - INIT
    init(
        title: String,
        genre: Genre
    ) {
        self.title = title
        self.genre = genre
    }
}
