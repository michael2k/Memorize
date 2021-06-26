//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Michael M. Kim on 2021/06/12.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
