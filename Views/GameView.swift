//
//  GameView.swift
//  Point Counter
//
//  Created by Neal Watkins on 2022/8/14.
//

import SwiftUI

struct GameView: View {
    
    @State var game: Game
    
    var body: some View {
        HStack {
            VStack {
                Text(game.teamA.name)
                Text("\(game.scoreA)")
            }
            VStack {
                Text(game.teamB.name)
                Text("\(game.scoreB)")
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(game: Game())
    }
}
