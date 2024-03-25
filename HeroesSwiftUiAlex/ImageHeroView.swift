//
//  ImageHeroView.swift
//  HeroesSwiftUiAlex
//
//  Created by Alex  on 25/3/24.
//

import SwiftUI

struct ImageHeroView: View {
    let hero: Hero
    var body: some View {
        HStack() {
            VStack(alignment: .leading) {
                Text(hero.apodo)
                    .font(.title)
                .bold()
                ForEach(hero.poderes, id: \.self) { poder in
                    Text(poder.rawValue)
                        .font(.footnote)
                }
            }
            Spacer()
            Image(hero.imagen)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .clipShape(RoundedRectangle(cornerRadius: 30))
        }
    }
}

#Preview {
    ImageHeroView(hero: .test)
}
