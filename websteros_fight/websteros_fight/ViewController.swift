//
//  ViewController.swift
//  websteros_fight
//
//  Created by maxime jacquette on 18/03/2019.
//  Copyright © 2019 maxime jacquette. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ui_result: UILabel!
    
    @IBAction func ui_launch() {
    }
    @IBAction func digit_character(_ sender: UIButton) {
        ui_result.text = "\(sender.tag)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

