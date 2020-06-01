//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Eric Janto on 31/05/2020.
//  Copyright © 2020 Eric Janto. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
        
        
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🐳","🍕","λ"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
