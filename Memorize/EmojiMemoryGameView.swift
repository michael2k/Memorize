//
//  EmojiMomoryGameView.swift
//  Memorize
//
//  Created by Michael M. Kim on 2021/06/12.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        return HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }
            }
        }
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}
				

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        GeometryReader(content: { geometry in
            self.body(for: geometry.size)
        })
    }
    
    func body(for size: CGSize) -> some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: conrnerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: conrnerRadius).stroke(lineWidth: edgeLineWidth)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: conrnerRadius).fill()
            }
        }
        .font(Font.system(size: fontSize(for: size)))
    }
    
    // MARK: - Drawing Contents
    
    let conrnerRadius: CGFloat = 10.0
    let edgeLineWidth: CGFloat = 3    
    func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height) * 0.75
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EmojiMemoryGameView(viewModel: EmojiMemoryGame())
            EmojiMemoryGameView(viewModel: EmojiMemoryGame())
        }
    }
}
