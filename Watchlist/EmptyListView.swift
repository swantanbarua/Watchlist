//
//  EmptyListView.swift
//  Watchlist
//
//  Created by Swantan Barua on 22/09/25.
//

import SwiftUI

struct EmptyListView: View {
    
    // MARK: - BODY
    var body: some View {
        ContentUnavailableView {
            Circle()
                .fill(.blue.gradient)
                .stroke(
                    .blue.gradient.opacity(0.15),
                    lineWidth: 30
                )
                .stroke(
                    .blue.gradient.opacity(0.15),
                    lineWidth: 60
                )
                .stroke(
                    .blue.gradient.opacity(0.15),
                    lineWidth: 90
                )
                .frame(width: 180)
                .overlay {
                    Image(systemName: "movieclapper")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                        .foregroundStyle(.white)
                        .padding(
                            .top,
                            -6
                        )
                }
        } description: {
            GroupBox {
                TabView {
                    PageTabView(
                        icon: "1.circle",
                        description: "Add some movies to the watchlist if you plan to watch them later"
                    )
                    
                    PageTabView(
                        icon: "2.circle",
                        description: "Later on you can also choose a random film to watch"
                    )
                }
                .tabViewStyle(PageTabViewStyle())
                .frame(
                    minWidth: 0,
                    maxWidth: 560,
                    minHeight: 120,
                    maxHeight: 180
                )
            }
        }
    }
}

#Preview {
    EmptyListView()
}
