//
//  Game.swift
//  Point Counter
//
//  Created by Neal Watkins on 2022/7/16.
//

import Foundation

class Game: Codable, ObservableObject {
    
    var sport: Sport = Sport()
    var teamA: Team = Team(name: "Team A")
    var teamB: Team = Team(name: "Team B")
    var scoreA: Int = 0
    var scoreB: Int = 0
    
    
}
