//
//  PageTabView.swift
//  Watchlist
//
//  Created by Swantan Barua on 22/09/25.
//

import SwiftUI

struct PageTabView: View {
    
    // MARK: - PROPERTIES
    var icon: String
    var description: String
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: icon)
                .imageScale(.large)
                .font(.largeTitle.weight(.light))
                .symbolEffect(.breathe)
            
            Text(description)
                .font(.title.weight(.bold))
                .fontWidth(.compressed)
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    PageTabView(
        icon: "1.circle",
        description: "Add some movies to the watchlist if you plan to watch later"
    )
}
