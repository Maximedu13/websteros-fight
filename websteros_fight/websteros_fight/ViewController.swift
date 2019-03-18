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

 
    @IBOutlet weak var ui_result: UILabel!
    
    @IBAction func ui_launch() {
    }
    @IBAction func digit_character(_ sender: UIButton) {
        ui_result.text = "\(sender.tag)"
        for (index, character) in characters_list.enumerated() {
            if sender.tag == index{
                ui_result.text = characters_list[index]
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

