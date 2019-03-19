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
    var result_battle : String = ""
    var character_chosen: [String] = []
    var _currentCharacter : Double = 0 {
        didSet{
            ui_result.text = "\(_currentCharacter)"
        }
    }
    @IBOutlet weak var ui_result: UILabel!
    
    @IBAction func ui_launch() {
        ui_result.text? = result_battle
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
                        if character_chosen[0] == character_chosen[1]{
                           result_battle = "Impossible de se combattre soi-même"
                        }
                        else if (character_chosen[0] == "Cersei Lannister" &&  character_chosen[1] == "Jaime Lannister") || (character_chosen[0] == "Jaime Lannister" &&  character_chosen[1] == "Cersei Lannister") {
                            result_battle = "Jaime l'emporte face à Cersei"
                        }
                            
                        else if (character_chosen[0] == "Cersei Lannister" &&  character_chosen[1] == "Sansa Stark") || (character_chosen[0] == "Sansa Stark" &&  character_chosen[1] == "Cersei Lannister") {
                            result_battle = "Sansa l'emporte face à Cersei"
                        }
                            
                        else if (character_chosen[0] == "Cersei Lannister" &&  character_chosen[1] == "Arya Stark") || (character_chosen[0] == "Arya Stark" &&  character_chosen[1] == "Cersei Lannister") {
                            result_battle = "Arya Stark l'emporte face à Cersei"
                        }
                        
                        else if (character_chosen[0] == "Cersei Lannister" &&  character_chosen[1] == "Arya Stark") || (character_chosen[0] == "Arya Stark" &&  character_chosen[1] == "Cersei Lannister") {
                            result_battle = "Arya Stark l'emporte face à Cersei"
                        }
                            
                        else if (character_chosen[0] == "Cersei Lannister" &&  character_chosen[1] == "Samwell Tarly") || (character_chosen[0] == "Samwell Tarly" &&  character_chosen[1] == "Cersei Lannister") {
                            result_battle = "Cersei l'emporte face à Samwell"
                        }
                            
                        else if (character_chosen[0] == "Cersei Lannister" &&  character_chosen[1] == "Ellaria Sand") || (character_chosen[0] == "Ellaria Sand" &&  character_chosen[1] == "Cersei Lannister") {
                            result_battle = "Cersei l'emporte face à Ellaria"
                        }
                            
                            
                        else if (character_chosen[0] == "Jaime Lannister" &&  character_chosen[1] == "Tyrion Lannister") || (character_chosen[0] == "Tyrion Lannister" &&  character_chosen[1] == "Jaime Lannister") {
                            result_battle = "Tyrion l'emporte face à Jaime"
                        }
                        
                        else{
                            result_battle = "Match nul !"
                        }

                        
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

