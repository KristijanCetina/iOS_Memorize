//
//  ContentView.swift
//  Memorize
//
//  Created by Kristijan Cetina on 27.5.20.
//  Copyright © 2020 Kristijan Cetina. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        return HStack() {
            ForEach(viewModel.cards) { card in
				CardView(card: card).onTapGesture {
					self.viewModel.choose(card: card)
				}
            }
        }
        .foregroundColor(Color.orange)
        .padding()
        .font(Font.largeTitle)
    }
}


struct CardView: View {
    var card: MemoryGame<String>.Card
    var body : some View{
        ZStack() {
            if card.isFaceUp{
                RoundedRectangle(cornerRadius: 50)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: 50)
                    .stroke( lineWidth: 3)
                Text(card.content)
            }
            else
            {
                RoundedRectangle(cornerRadius: 50)
                    .fill()
            }
        }
    }
}

