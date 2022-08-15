//
//  ScoreButtons.swift
//  Point Counter
//
//  Created by Neal Watkins on 2022/8/15.
//

import SwiftUI

struct ScoreButtons: View {
    
    @Binding var score: Int
    
    var body: some View {
        HStack {
            Button("-") {
                score -= 1
            }
            .buttonStyle(.bordered)
            .disabled(score < 1)
            Button("+") {
                score += 1
            }
            .buttonStyle(.borderedProminent)
        }
    }
}
struct ScoreButtons_Previews: PreviewProvider {
    @State static var score = 0
    static var previews: some View {
        ScoreButtons(score: $score)
    }
}
