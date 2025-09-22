//
//  ContentView.swift
//  Watchlist
//
//  Created by Swantan Barua on 21/09/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    // MARK: - PROPERTIES
    @Environment(\.modelContext) private var modelContext
    @Query private var movies: [Movie]
    
    // MARK: - BODY
    var body: some View {
        List {
            
        }
        .overlay {
            if movies.isEmpty {
                EmptyView()
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(
            for: Movie.self,
            inMemory: true
        )
}
