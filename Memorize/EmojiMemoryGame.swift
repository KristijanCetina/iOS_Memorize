//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Kristijan Cetina on 7.6.20.
//  Copyright © 2020 Kristijan Cetina. All rights reserved.
//

//import Foundation
import SwiftUI


class EmojiMemoryGame
{

    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String>{
        let emojis = ["😀","👻", "🐽"]
        return MemoryGame<String>(numberOfPairOfCards: emojis.count) { pairIndex in return emojis[pairIndex] }
    }
    
    var cards:Array<MemoryGame<String>.Card>
    {
        model.cards
    }
    
    func choose(card: MemoryGame<String>.Card)
    {
        model.choose(card: card)
    }
    
}
  
