//
//  PlayerRandom.swift
//  MacPig
//
//  Created by Michael Thornton on 1/22/19.
//  Copyright © 2019 Michael Thornton. All rights reserved.
//

import Foundation

class tanaka: PlayerProtocol {
    
    
    
    
    func willPlayToTotalOf(_ goal: Int, withTurnScoreOf turnScore: Int, withPlayerTotal currentTotal: Int, againstOpponentWith opponentTotal: Int) -> Bool {
        var hold = 20
        if currentTotal + turnScore > goal {
            return false
        }
        if (opponentTotal - currentTotal) >= currentTotal{
            if opponentTotal <= goal{
                hold = hold + 10
                //return true
            }
            
        }
        
        return turnScore <= hold
    }
}


extension tanaka: CustomStringConvertible {
    
    var description: String {
        return "Tanaka"
    }
    
} // end extension
