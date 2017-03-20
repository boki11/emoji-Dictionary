//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Boki on 20/3/17.
//  Copyright © 2017 Boki. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet var definitionLabel: UILabel!
    
    @IBOutlet var emojiLabel: UILabel!
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😤" {
            definitionLabel.text = "This is an angry/ determined face"
        }
        if emoji == "😩" {
            definitionLabel.text = "This is a sad face"
        }
        if emoji == "😍" {
            definitionLabel.text = "This is a loving face"
        }
        if emoji == "😂" {
            definitionLabel.text = "This is a laughing/ crying face"
        }
        if emoji == "😀" {
            definitionLabel.text = "This is a smiling face"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
