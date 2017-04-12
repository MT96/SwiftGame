//
//  TestDice.swift
//  SwiftGame
//
//  Created by Mattias Tengzelius on 2017-04-11.
//  Copyright © 2017 Mattias Tengzelius. All rights reserved.
//

import Foundation
import GameplayKit

class RollDices: NSObject {
    
    var DiceOne = GKRandomDistribution.d20()
    var DiceTwo = GKRandomDistribution.d20()
    var diceSum = 0
    var diceSum2 = 0
    
    func RollDiceOne()  {
        diceSum = (Int(DiceOne.nextInt()))
        print("DiceOne:" ,diceSum)
        //TextViewOne.text! = (String(diceSum))
    }
    
    func RollDiceTwo()  {
        diceSum2 = (Int(DiceTwo.nextInt()))
        print("DiceTwo:" ,diceSum2)
        //TextViewTwo.text! = (String(diceSum))
        
    }
}
