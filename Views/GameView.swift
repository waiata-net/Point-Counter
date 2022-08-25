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
                    .font(.title)
                Text("\(game.scoreA)")
                    .font(.system(size: 120, weight: .medium))
                ScoreButtons(score: $game.scoreA)
            }
            .padding()
            VStack {
                Text(game.teamB.name)
                    .font(.title)
                Text("\(game.scoreB)")
                    .font(.system(size: 120, weight: .medium))
                ScoreButtons(score: $game.scoreB)
            }
            .padding()
        }
    }
}




struct GameView_Previews: PreviewProvider {
    @State static var game = Game()
    static var previews: some View {
        Group {
            GameView(game: $game)
                .previewInterfaceOrientation(.portrait)
            GameView(game: $game)
                .preferredColorScheme(.dark)
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
