//
//  Scoring.swift
//  Point Counter
//
//  Created by Neal Watkins on 2022/7/16.
//

import Foundation

struct Scoring: Codable {
    
    var title: String = ""
    var method: Method = .tally
    var start: Int = 0
    var step: Int = 1
    var value: Int = 1
    var target: Int?
    var margin: Int?
    var series: [String] = []
    var heirs: [Scoring] = []
    
    var index: Int = 0
    
    var total: Int {
        index * value
    }
    
    var text: String {
        if series.indices.contains(index) {
            return series[index]
        } else {
            return "\(index)"
        }
    }
    
    enum Method: Codable {
        case first(to: Int, by: Int = 2)
        case deuce(at: Int, deuce: String = "D", advantage: String = "A")
        case tiebreak(at: Int)
        case tally
        case total
    }
    
    static let tennisPoints = Scoring(
        title: "Points",
        method: .deuce(at: 3),
        series: ["💛", "15", "30", "40", "Game"],
        heirs: [Scoring(
            title: "Games",
            method: .tiebreak(at: 6),
            heirs: [Scoring(
                title: "Sets",
                method: .first(to: 3)
            )]
        )]
    )
    
}
