//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Muhammad Huzaifa Khalid on 2021-11-08.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var playerOneSelection: UIImageView!
    @IBOutlet weak var playerTwoSelection: UIImageView!
    
    var playerOneChoice = ""
    var playerTwoChoice = ""
    let choices = ["rock","paper","scissors"]
    let whoBeatsWhat = ["rock": "scissors", "paper" : "scissors", "scissors": "paper"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 
    @IBOutlet weak var whoWon: UILabel!
    
    @IBAction func playerTwoButton(_ sender: UIButton) {
    
        let playerTwoChoice = choices.randomElement()
        
        if let imageName2 = playerTwoChoice {
            playerTwoSelection.image = UIImage(named: imageName2)  }
 
         
    }
    
    @IBAction func playerOneButton(_ sender: UIButton) {
        let playerOneChoice = choices.randomElement()
      
        
        if let imageName1 = playerOneChoice{
            playerOneSelection.image = UIImage(named: imageName1)
            
        }
        
    }
    
}

