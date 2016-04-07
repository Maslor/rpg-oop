//
//  DarkWizard.swift
//  rpgoop
//
//  Created by Gabriel Freire on 07/04/16.
//  Copyright © 2016 maslor. All rights reserved.
//

import Foundation

class DarkWizard : Enemy {
    
    override var loot: [String] {
        return ["Dark Staff", "Magic Cape", "Death Elixir"]
    }
    
    override var type: String {
        return "Dark Wizard"
    }
}
