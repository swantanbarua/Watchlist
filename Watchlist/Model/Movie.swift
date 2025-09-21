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
        
        container.mainContext.insert(
            Movie(
                title: "John Wick",
                genre: Genre(rawValue: 1)!
            )
        )
        
        container.mainContext.insert(
            Movie(
                title: "Groundhog Day",
                genre: Genre(rawValue: 2)!
            )
        )
        
        container.mainContext.insert(
            Movie(
                title: "The Godfather",
                genre: Genre(rawValue: 3)!
            )
        )
        
        container.mainContext.insert(
            Movie(
                title: "Inside Job",
                genre: Genre(rawValue: 4)!
            )
        )
        
        container.mainContext.insert(
            Movie(
                title: "The Revenant",
                genre: Genre(rawValue: 5)!
            )
        )
        
        container.mainContext.insert(
            Movie(
                title: "Lord of The Rings",
                genre: Genre(rawValue: 6)!
            )
        )
        
        container.mainContext.insert(
            Movie(
                title: "Toy Story",
                genre: Genre(rawValue: 7)!
            )
        )
        
        container.mainContext.insert(
            Movie(
                title: "Hamilton",
                genre: Genre(rawValue: 8)!
            )
        )
        
        container.mainContext.insert(
            Movie(
                title: "Blade Runner",
                genre: Genre(rawValue: 9)!
            )
        )
        
        container.mainContext.insert(
            Movie(
                title: "Dirty Dancing",
                genre: Genre(rawValue: 10)!
            )
        )
        
        container.mainContext.insert(
            Movie(
                title: "Parasite",
                genre: Genre(rawValue: 11)!
            )
        )
        
        container.mainContext.insert(
            Movie(
                title: "Magnificient Seven",
                genre: Genre(rawValue: 12)!
            )
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
