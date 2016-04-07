//
//  Kubarak.swift
//  rpgoop
//
//  Created by Gabriel Freire on 07/04/16.
//  Copyright © 2016 maslor. All rights reserved.
//

import Foundation

class Kubarak : Enemy {
    let IMMUNITY_VALUE = 10
    
    override var loot : [String] {
        return ["Kubarak Venom", "Kubarak Stinger", "Leather Armor"]
    }
    
    override var type: String {
        return "Kubarak"
    }
    
    override func attemptAttack(atkPower: Int) -> Bool {
        if (atkPower >= IMMUNITY_VALUE) {
            return super.attemptAttack(atkPower)
        } else {
            return false
        }
    }
}
