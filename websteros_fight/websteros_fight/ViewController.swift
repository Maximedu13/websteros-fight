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
    var characters_chosen = [] as NSArray
    var _currentCharacter : Double = 0 {
        didSet{
            ui_result.text = "\(_currentCharacter)"
        }
    }
    @IBOutlet weak var ui_result: UILabel!
    
    @IBAction func ui_launch() {
    }
    
    
 
    @IBAction func digit_character(_ sender: UIButton) {
         _currentCharacter = _currentCharacter * 10 + Double(sender.tag)
        for (index, character) in characters_list.enumerated() {
            if sender.tag == index{
                ui_result.text = characters_list[index]
            }
        }
        
    }
    
    @IBAction func addCharacter() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

