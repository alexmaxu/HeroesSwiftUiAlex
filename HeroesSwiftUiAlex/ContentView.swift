//
//  ContentView.swift
//  HeroesSwiftUiAlex
//
//  Created by Alex  on 22/3/24.
//

import SwiftUI

struct ContentView: View {
    
    let heroes = getHeroes()

    var body: some View {
        NavigationView {
            List(heroes) { hero in
                NavigationLink {
                    HeroDetailView(hero: hero)
                } label: {
                    ImageHeroView(hero: hero)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
