//
//  main.swift
//  MacPig
//
//  Created by Michael Thornton on 1/16/19.
//  Copyright © 2019 Michael Thornton. All rights reserved.
//

import Foundation

print("Pig death match!\n\n")



let statusUpdate = CommandLineStatusUpdate(verbosity: .High)
GameManager.instance.statusUpdate = statusUpdate


TournamentManager.instance.statusUpdate = statusUpdate

TournamentManager.instance.addPlayer(player: PlayerHoldFixed())
TournamentManager.instance.addPlayer(player: PlayerRandom())

TournamentManager.instance.playRoundRobin(10)
