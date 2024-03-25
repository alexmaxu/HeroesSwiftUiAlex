//
//  NavigationStackView.swift
//  HeroesSwiftUiAlex
//
//  Created by Alex  on 25/3/24.
//

import SwiftUI

struct NavigationStackView: View {
    
    let heroes = getHeroes()
   
    var body: some View {
        NavigationStack {
            List {
                ForEach(heroes) { hero in
                    NavigationLink(value: hero) {
                        HeroCellView(hero: hero)
                    }
                    
                }
            }
            .navigationTitle("Heroes")
            .navigationDestination(for: Hero.self) { hero in
                HeroDetailNavStack(hero: hero)
            }
        }
    }
}

#Preview {
    NavigationStackView()
}


