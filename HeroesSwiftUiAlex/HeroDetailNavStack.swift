//
//  HeroDetailNavStack.swift
//  HeroesSwiftUiAlex
//
//  Created by Alex  on 25/3/24.
//

import SwiftUI

struct HeroDetailNavStack: View {
    let hero: Hero
    var body: some View {
        VStack {
            Image(hero.imagen)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                
            Text(hero.apodo)
                .font(.largeTitle)
                .bold()
            HStack {
                Text(hero.nombreReal)
                Text(String(hero.edad))
            }
            .padding(.bottom)
            Text("Lore:")
                .bold()
            Text(hero.descripcion ?? hero.historia ?? "No tiene lore.")
                
            Spacer()
        }
        .padding(.horizontal)
        
    }
}

#Preview {
    HeroDetailNavStack(hero: .test)
}
