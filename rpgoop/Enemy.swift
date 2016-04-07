//
//  Enemy.swift
//  rpgoop
//
//  Created by Gabriel Freire on 07/04/16.
//  Copyright © 2016 maslor. All rights reserved.
//

import Foundation

class Enemy : Character {
    var loot : [String] {
        return ["Rusty Dagger", "Cracked Buckler"]
    }
    
    var type : String {
        return "Minion"
    }
    
    func dropLoot() -> String? {
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        return nil
    }
}
