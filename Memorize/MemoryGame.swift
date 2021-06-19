//
//  MemoryGame.swift
//  Memorize
//
//  Created by Michael M. Kim on 2021/06/19.
//

import Foundation

struct MemoryGage<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
