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
               Text("What to Watch?")
                    .font(.largeTitle.weight(.black))
                    .foregroundStyle(.blue.gradient)
                    .frame(
                        minWidth: 0,
                        maxWidth: .infinity,
                        alignment: .center
                    )
                    .padding(.vertical)
                
                TextField(
                    "Movie Title",
                    text: $title
                )
                .textFieldStyle(.roundedBorder)
                .font(.largeTitle.weight(.light))
            }
            .listRowSeparator(.hidden)
        }
    }
}

#Preview {
    NewMovieFormView()
}
