//
//  SettingView.swift
//  Point Counter
//
//  Created by Neal Watkins on 2022/8/25.
//

import SwiftUI

struct SettingView: View {
    
    @Binding var game: Game
    
    var body: some View {
        Form {
            Section("Team Names") {
                TextField("Team A", text: $game.teamA.name)
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView(game: .constant(Game()))
    }
}
