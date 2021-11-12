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
    
    var player1played:Bool = false
    var player2played:Bool = false
    
    var randomImageName1:String? = "rock"
    var randomImageName2:String? = "paper"
    
    let choices = ["rock","paper","scissors"]
   
    
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
        if(player1played == false){
            randomImageName1 = choices.randomElement()
            player1played = true
            player2played = false
            
        }
        
        
    }
    
}

