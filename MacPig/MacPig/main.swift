//
//  main.swift
//  MacPig
//
//  Created by Michael Thornton on 1/16/19.
//  Copyright © 2019 Michael Thornton. All rights reserved.
//

import Foundation

print("Pig death match!")

let p1 = PlayerHoldFixed()
let p2 = PlayerRandom()


let statusUpdate = CommandLineStatusUpdate(verbosity: .High)
GameManager.instance.statusUpdate = statusUpdate


TournamentManager.instance.statusUpdate = statusUpdate

TournamentManager.instance.addPlayer(player: p1)
TournamentManager.instance.addPlayer(player: p2)

TournamentManager.instance.playRoundRobin(1)
