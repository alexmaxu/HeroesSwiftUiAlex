//
//  HeroesTabView.swift
//  HeroesSwiftUiAlex
//
//  Created by Alex  on 25/3/24.
//

import SwiftUI

struct HeroesTabView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem { Label("List View", systemImage: "list.dash") }
            NavigationStackView()
                .tabItem { Label("NavigationStack", systemImage: "square.stack.3d.up") }
            HeroesGrid()
                .tabItem { Label("Grid Galeria", systemImage: "iphone") }
        }
    }
}

#Preview {
    HeroesTabView()
}
