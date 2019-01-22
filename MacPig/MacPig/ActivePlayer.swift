//
//  ActivePlayer.swift
//  MacPig
//
//  Created by Michael Thornton on 1/16/19.
//  Copyright © 2019 Michael Thornton. All rights reserved.
//

import Foundation



class ActivePlayer {
    
    var player: PlayerProtocol
    
    var goalScore = 0
    var currentTotal = 0
    var turnTotal = 0

    
    init(player: PlayerProtocol, goalScore: Int) {
        
        self.player = player
        self.goalScore = goalScore
    }
    
    
    
    func willPlayAgainstTotal(_ opponentTotal: Int) -> Bool {
        return player.willPlayToTotalOf(goalScore, withTurnScoreOf: turnTotal, withPlayerTotal: currentTotal, againstOpponentWith: opponentTotal)
    }
    
    
    
    func settleTurn() {
        currentTotal += turnTotal
        turnTotal = 0
    }
    
    
    func pigOut() {
        turnTotal = 0
    }
    
    
    func isWinner() -> Bool {
        return currentTotal >= goalScore
    }
    
} // end class



extension ActivePlayer: CustomStringConvertible {
    
    var description: String {
        return "\(player) score = (\(currentTotal))"
    }
    
} // end extension
