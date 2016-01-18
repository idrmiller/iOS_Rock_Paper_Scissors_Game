//
//  SuccessController.swift
//  iOS_Rock_Paper_Scissors
//
//  Created by David Miller on 1/17/16.
//  Copyright © 2016 LM Labs. All rights reserved.
//

import Foundation
import UIKit

class SuccessViewController: UIViewController {
    
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var computerImage: UIImageView!
    
    @IBOutlet weak var userLoose: UILabel!
    @IBOutlet weak var computerLoose: UILabel!
    
    @IBOutlet weak var winOrLooseMessage: UILabel!
    
    @IBOutlet weak var userPlayed: UILabel!
    @IBOutlet weak var computerPlayed: UILabel!
    
    
    
    
    override func viewWillAppear(animated: Bool) {
        
        determineWinner()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.3) {
            self.userImage.alpha = 1.0
            self.computerImage.alpha = 1.0
            self.userPlayed.alpha = 1.0
            self.computerPlayed.alpha = 1.0
        }
        
        UIView.animateWithDuration(0.5) {
            self.winOrLooseMessage.alpha = 1.0
            
            if self.userLoose.hidden == true && self.computerLoose.hidden == true{
                self.userLoose.alpha = 0
                self.computerLoose.alpha = 0
            } else if self.computerLoose.hidden == true {
                self.userLoose.alpha = 1.0
            } else if self.userLoose.hidden == true {
                self.computerLoose.alpha = 1.0
            }
            
            
            
        }
        
    }
    
    func determineWinner() {
        
        //TODO: Create random number between 1-3 and set to computer
        computerInput = Int(1 + arc4random_uniform(26) % 3)
        print("Computer input = \(computerInput) and User input = \(userInput)")//Test to see if there is a good distribution of random number generator
        
        
        //TODO: Set User & Computer Image
        self.userImage.image = UIImage(named: "item\(userInput!)")
        self.computerImage.image = UIImage(named: "item\(computerInput!)")
        
        
        //Set label for played item
        func setLabel(input: Int) -> String{
            switch input {
            case 1:
                return "Played Rock"
            case 2:
                return "Played Paper"
            case 3:
                return "Played Scissors"
            default:
                return "Played Item"
            }
        }
        
        userPlayed.text = setLabel(userInput!)
        computerPlayed.text = setLabel(computerInput!)
        
        
        //Calculate winner and set lables
        //TODO: Rock beats scissors (R = 1 vs S = 3)
        //TODO: Paper covers rock   (P = 2 vs R = 1)
        //TODO: Scissors cut paper  (S = 3 vs P = 2)
        //TODO: Tie when equal to each other
        //TODO: All other cases user looses
        if userInput == 1 && computerInput == 3{
            winOrLooseMessage.text = "You Win, Rock crushes Scissors!"
            userLoose.hidden = true
        } else if userInput == 2 && computerInput == 1 {
            winOrLooseMessage.text = "You Win, Paper covers Rock!"
            userLoose.hidden = true
        } else if userInput == 3 && computerInput == 2 {
            winOrLooseMessage.text = "You Win, Scissor cuts Paper!"
            userLoose.hidden = true
        } else if userInput == computerInput {
            winOrLooseMessage.text = "TIE"
            userLoose.hidden = true
            computerLoose.hidden = true
        } else {
            winOrLooseMessage.text = "You Lost"
            computerLoose.hidden = true
        }
        
        self.userImage.alpha = 0
        self.computerImage.alpha = 0
        self.userLoose.alpha = 0
        self.userPlayed.alpha = 0
        self.computerPlayed.alpha = 0
        self.computerLoose.alpha = 0
        self.winOrLooseMessage.alpha = 0
        
        
    }
    
    @IBAction func playAgain(sender: AnyObject) {
        userInput = 0
    }
    
    
}
