//
//  GameView.swift
//  Point Counter
//
//  Created by Neal Watkins on 2022/8/14.
//

import SwiftUI

struct GameView: View {
    
    @Binding var game: Game
    
    var body: some View {
        HStack {
            VStack {
                Text(game.teamA.name)
                Text("\(game.scoreA)")
                ScoreButtons(score: $game.scoreA)
            }
            VStack {
                Text(game.teamB.name)
                Text("\(game.scoreB)")
                ScoreButtons(score: $game.scoreB)
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    @State static var game = Game()
    static var previews: some View {
        GameView(game: $game)
    }
}
