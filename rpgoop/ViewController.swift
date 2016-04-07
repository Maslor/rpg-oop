//
//  ViewController.swift
//  rpgoop
//
//  Created by Gabriel Freire on 06/04/16.
//  Copyright © 2016 maslor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var atkButton: UIButton!
    @IBOutlet weak var enemyHP: UILabel!
    @IBOutlet weak var enemyImage: UIImageView!
    @IBOutlet weak var playerHP: UILabel!
    @IBOutlet weak var chestButton: UIButton!
    @IBOutlet weak var displayLabel: UILabel!
    
    var player : Player!
    var enemy : Enemy!
    var chestMessage : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "Gabriel", startingHp: 100, atkPower: 20)
        getRandomEnemy()
        playerHP.text = "\(player.hp) HP"
    }
    
    func getRandomEnemy() {
        let rand = Int(arc4random_uniform(2))
        if (rand == 0) {
            enemy = Kubarak(startingHp: 100, atkPower: 10)
        } else {
            enemy = DarkWizard(startingHp: 75, atkPower: 45)
        }
    }
    
    @IBAction func onChestButtonTapped(sender: AnyObject) {
        chestButton.hidden = true
        displayLabel.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector:#selector(ViewController.getRandomEnemy), userInfo: nil, repeats: false)
        enemyImage.hidden = false
    }
    
    @IBAction func onAtkButtonTapped(sender: AnyObject) {
        if enemy.attemptAttack(player.atkPower) {
            displayLabel.text = "Attacked \(enemy.type) for \(player.atkPower) HP"
            enemyHP.text = "\(enemy.hp) HP"
        } else {
            displayLabel.text = "Attack unsuccessful"
        }
        if let loot = enemy.dropLoot() {
            player.addItemToInventory(loot)
            chestMessage = "\(player.name) found \(loot)"
            chestButton.hidden = false
        }
        if !enemy.isAlive {
            enemyHP.text = ""
            displayLabel.text = "Killed \(enemy.type)"
            enemyImage.hidden = true
        }
    }
}

