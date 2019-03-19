//
//  ViewController.swift
//  websteros_fight
//
//  Created by maxime jacquette on 18/03/2019.
//  Copyright © 2019 maxime jacquette. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var characters_list = ["Cersei Lannister", "Jaime Lannister", "Tyrion Lannister", "Sansa Stark", "Arya Stark", "Samwell Tarly", "Le Roi de la Nuit", "Ellaria Sand", "Jon Snow"]
    var character_chosen: [String] = []
    var _currentCharacter : Double = 0 {
        didSet{
            ui_result.text = "\(_currentCharacter)"
        }
    }
    @IBOutlet weak var ui_result: UILabel!
    
    @IBAction func ui_launch() {
        
    }
    
    
 
    @IBAction func digit_character(_ sender: UIButton) {
         //_currentCharacter = _currentCharacter * 10 + Double(sender.tag)
        for (index, character) in characters_list.enumerated() {
            if sender.tag == index{
                ui_result.text? = ""
                character_chosen.append(characters_list[index])
                for (item, cha) in character_chosen.enumerated() {
                    if character_chosen.count == 1{
                         ui_result.text? = cha
                    }
                    if character_chosen.count == 2{
                        ui_result.text? = character_chosen[0] + " contre " + character_chosen[1]
                    }
                    else if character_chosen.count > 2{
                        reset()
                    }
                }
            }
        }
        
    }

    @IBAction func reset() {
        character_chosen.removeAll()
        _currentCharacter = 0
        ui_result.text? = "Choisissez deux personnages"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

