//
//  PlayerProtocol.swift
//  MacPig
//
//  Created by Michael Thornton on 1/16/19.
//  Copyright © 2019 Michael Thornton. All rights reserved.
//

import Foundation

protocol PlayerProtocol {
    
    func willPlayToTotalOf(_ goal: Int, withTurnScoreOf turnScore: Int, withPlayerTotal currentTotal: Int, againstOpponentWith opponentTotal: Int) -> Bool
    
} // end protocol
