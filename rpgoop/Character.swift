//
//  File.swift
//  rpgoop
//
//  Created by Gabriel Freire on 07/04/16.
//  Copyright © 2016 maslor. All rights reserved.
//

import Foundation

class Character {
    private var _hp : Int = 100
    private var _atkPower : Int = 20
    
    var atkPower : Int {
        get {
            return _atkPower
        }
    }
    
    var hp : Int {
        get {
            return _hp
        }
    }
    
    var isAlive : Bool {
        get {
            if _hp > 0 {
                return true
            } else {
                return false
            }
        }
    }
    
    init(startingHp: Int, atkPower: Int) {
        _hp = startingHp
        _atkPower = atkPower
    }
    
    func attemptAttack(atkPower: Int) -> Bool {
        _hp -= atkPower
        return true
    }
}