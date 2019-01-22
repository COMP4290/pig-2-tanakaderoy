//
//  TournamentPlayer.swift
//  MacPig
//
//  Created by Michael Thornton on 1/22/19.
//  Copyright © 2019 Michael Thornton. All rights reserved.
//

import Foundation


class TournamentPlayer {
    
    var wins = 0
    var losses = 0
    var matchWins = 0
    var matchLosses = 0
    var player: PlayerProtocol?
    


    init(player: PlayerProtocol) {
        self.player = player
    }
    
    
    func resetStats() {
        wins = 0;
        losses = 0;
    }
    
} // end class
