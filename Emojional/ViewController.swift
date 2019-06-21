//
//  ViewController.swift
//  Emojional
//
//  Created by Apple on 6/21/19.
//  Copyright © 2019 Laura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let emojis = ["🙊": "omg", "🐵": "ok", "🙉": "mindblown", "🙈": "do not want to know"]
    var customMessages = [
        "omg" : ["what happened,cannot tell mom"],
        "ok" : ["yay, looks good"],
        "mindblown" : ["woah, WOWZERs"],
        "do not want to know" : ["no show,hide"]]
    
    
    //@IBOutlet weak var appTitle: UILabel!
    //@IBOutlet weak var omg: UITextField!
    //@IBOutlet weak var donnotTellMe: UITextField!
    
    //@IBOutlet weak var mindBlown: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // "ugly crying": ["cheer up buttercup", "take a deep breathe", "do you need to talk?"]
    
    @IBAction func showMessage(sender: UIButton) {
        
        let selectedEmotion = sender.titleLabel?.text
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[0]
        let alertController = UIAlertController(title: "After you find out the results of the final exam", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title:"ok", style: UIAlertAction.Style.default, handler: nil))
        
        
        
        
        
        // when click emoji button user should find a text message appear with the proper words the monkey with hands on the mouth should appear  OMG. the monkey just smiling will respond with an ok. the monkey with hands on its ears will respond with mindblown! the monkey with its hands over its eyes will respond with do not show me my exam grades.
        
        
        
        present(alertController, animated: true, completion: nil)
        
    }
    
}

