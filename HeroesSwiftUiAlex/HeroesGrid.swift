//
//  HeroesGrid.swift
//  HeroesSwiftUiAlex
//
//  Created by Alex  on 29/3/24.
//

import SwiftUI

struct HeroesGrid: View {
    let heroes = getHeroes()
    let adaptativeCell: [GridItem] = [GridItem(.adaptive(minimum: 125))]
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: adaptativeCell, content: {
                    ForEach(heroes) { hero in
                        NavigationLink(value: hero) {
                            VStack {
                                Image(hero.imagen)
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    
                                Text(hero.apodo)
                            }
                        }.navigationDestination(for: Hero.self) { hero in
                            ScrollView {
                                HeroDetailView(hero: hero)
                            }
                        }
                    }
                })
            }
        }
    }
}

#Preview {
    HeroesGrid()
}
