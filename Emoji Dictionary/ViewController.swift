//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Boki on 16/3/17.
//  Copyright © 2017 Boki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var homeTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    // Note this enitre table view is running on what ever is placed in the varriable emoji. this is needed for deals4mee 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        homeTableView.dataSource = self
        homeTableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2017
        emoji1.category = "Happy"
        emoji1.definition = "This is  a happy face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😂"
        emoji2.birthYear = 2017
        emoji2.category = "Happy"
        emoji2.definition = "This is a laughing face"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😍"
        emoji3.birthYear = 2017
        emoji3.category = "Love"
        emoji3.definition = "This is a loving face"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😩"
        emoji4.birthYear = 2017
        emoji4.category = "UnHappy"
        emoji4.definition = "This is a whinging face"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😤"
        emoji5.birthYear = 2017
        emoji5.category = "Unhappy"
        emoji5.definition = "This is a Angry face"
        
        return[emoji1, emoji2, emoji3, emoji4, emoji5]
    }

}

