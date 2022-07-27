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
    var strings: [String] = []
    var successor: [Scoring]
    
    
    enum Method: Codable {
        case firstTo
        case bestOf
        case series
        case tally
        case total
    }
}
