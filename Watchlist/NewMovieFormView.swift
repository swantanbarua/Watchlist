//
//  NewMovieFormView.swift
//  Watchlist
//
//  Created by Swantan Barua on 05/02/26.
//

import SwiftUI

struct NewMovieFormView: View {
    
    // MARK: - PROPERTIES
    @State private var title = ""
    @State private var selectedGenre: Genre = .kids
    
    // MARK: - BODY
    var body: some View {
        Form {
            List {
                
                // MARK: - HEADEr
                Text("What to Watch?")
                    .font(.largeTitle.weight(.black))
                    .foregroundStyle(.blue.gradient)
                    .frame(
                        minWidth: 0,
                        maxWidth: .infinity,
                        alignment: .center
                    )
                    .padding(.vertical)
                
                // MARK: - TITLE
                TextField(
                    "Movie Title",
                    text: $title
                )
                .textFieldStyle(.roundedBorder)
                .font(.largeTitle.weight(.light))
                
                // MARK: - GENRE
                Picker(
                    "Genre",
                    selection: $selectedGenre
                ) {
                    ForEach(Genre.allCases) { genre in
                        Text(genre.name)
                            .tag(genre)
                    }
                }
            }
            .listRowSeparator(.hidden)
        }
    }
}

#Preview {
    NewMovieFormView()
}
