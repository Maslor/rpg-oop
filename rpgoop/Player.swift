//
//  Player.swift
//  rpgoop
//
//  Created by Gabriel Freire on 07/04/16.
//  Copyright © 2016 maslor. All rights reserved.
//

import Foundation

class Player : Character {
    private var _name = "Player"
    private var _inventory = [String]()
    
    var name : String {
        get {
            return _name
        }
    }
    
    var inventory : [String] {
        return _inventory
    }
    
    func addItemToInventory(item : String) {
        _inventory.append(item)
    }
    
    convenience init(name: String, startingHp: Int, atkPower: Int){
        self.init(startingHp: startingHp, atkPower: atkPower)
        _name = name
    }
}
