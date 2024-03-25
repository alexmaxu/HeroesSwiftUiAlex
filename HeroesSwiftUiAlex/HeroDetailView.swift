//
//  HeroDetailView.swift
//  HeroesSwiftUiAlex
//
//  Created by Alex  on 25/3/24.
//

import SwiftUI

struct HeroDetailView: View {
    let hero: Hero
    var body: some View {
        VStack {
            Image(hero.imagen)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(height: 300)
            Text(hero.apodo)
                .font(.largeTitle)
                .bold()
            Text(hero.nombreReal)
                .bold()
            Spacer().frame(height: 30)
            Text("Poderes:")
                .font(.title2)
                .bold()
            ForEach(hero.poderes, id: \.self) { poder in
                Text(poder.rawValue)
                
            }
            Text("Historia:")
                .font(.title2)
                .bold()
                .padding(.top)
            Text(hero.descripcion ?? hero.historia ?? "no hay descripcion" )
                .padding(.leading)
                .padding(.trailing)
            Spacer()
        }
        .padding(.top, 20)
    }
}

#Preview {
    HeroDetailView(hero: .test)
}
