//
//  HeroCellView.swift
//  HeroesSwiftUiAlex
//
//  Created by Alex  on 25/3/24.
//

import SwiftUI

struct HeroCellView: View {
    
    let hero: Hero
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(hero.apodo)
                    .font(.headline)
                    .bold()
                Text(hero.nombreReal)
                    .font(.footnote)
                    .fontWeight(.thin)
                
            }
            Spacer()
            Image(hero.imagen)
                .resizable()
                .scaledToFill()
                .frame(width: 200,height: 60, alignment: .top)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .clipped()
        }
    }
}

#Preview {
    HeroCellView(hero: .test)
}
