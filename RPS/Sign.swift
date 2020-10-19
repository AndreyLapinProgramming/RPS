//
//  Sign.swift
//  RPS
//
//  Created by Андрей Лапин on 19.10.2020.
//

import Foundation


func randomSign() -> Sign {
    let randomCount = Int.random(in: 0...2)
    switch randomCount {
    case 0:
        return .rock
    case 1:
        return .paper
    default:
        return .scissors
    }
    
}

enum Sign {
    case rock, paper, scissors
    
    var emoji : String {
        switch self {
        case .paper:
            return "✋"
        case .rock:
            return "👊"
        case .scissors:
            return "✌️"
        }
        
    }
    
    func getResult(oposite: Sign) -> GameState {
        switch (self, oposite) {
        case (.rock, .scissors), (.paper, .rock), (.scissors, .paper):
            return .win
        case (.rock, .paper), (.paper, .scissors), (.scissors, .rock):
            return .lose
        default:
            return .draw
        }
        
    }
}

