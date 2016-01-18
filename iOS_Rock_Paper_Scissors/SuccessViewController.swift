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
    
    var userInput: Int?
    var computerInput: Int?
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var computerImage: UIImageView!
    
    @IBOutlet weak var userLoose: UILabel!
    @IBOutlet weak var computerLoose: UILabel!
    
    @IBOutlet weak var winOrLooseMessage: UILabel!
    
    
    override func viewWillAppear(animated: Bool) {
        
        determineWinner()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.3) {
            self.userImage.alpha = 1.0
            self.computerImage.alpha = 1.0
        }
        
        UIView.animateWithDuration(0.5) { () -> Void in
            self.winOrLooseMessage.alpha = 1.0
            self.userLoose.alpha = 1.0
            self.computerLoose.alpha = 1.0
        }
        
    }
    
    func determineWinner() {
        
        //TODO: Create random number between 1-3 and set to computer
        computerInput = Int(1 + arc4random_uniform(26) % 3)
        print("Computer input = \(computerInput) and User input = \(userInput)")//Test to see if there is a good distribution of random number generator
        
        
        //TODO: Set User & Computer Image
        self.userImage.image = UIImage(named: "item\(userInput)")
        self.computerImage.image = UIImage(named: "item\(computerInput)")
        
        
        //Calculate winner and set lables
        //TODO: Rock beats scissors (R = 1 vs S = 3)
        //TODO: Paper covers rock   (P = 2 vs R = 1)
        //TODO: Scissors cut paper  (S = 3 vs P = 2)
        //TODO: Tie when equal to each other
        //TODO: All other cases user looses
        if userInput == 1 && computerInput == 3{
            winOrLooseMessage.text = "You Won !!"
            computerLoose.hidden = false
        } else if userInput == 2 && computerInput == 1 {
            winOrLooseMessage.text = "You Won !!"
            computerLoose.hidden = false
        } else if userInput == 3 && computerInput == 2 {
            winOrLooseMessage.text = "You Won !!"
            computerLoose.hidden = false
        } else if userInput == computerInput {
            winOrLooseMessage.text = "TIE"
        } else {
            winOrLooseMessage.text = "You Lost"
            userLoose.hidden = false
        }
        
        self.userImage.alpha = 0
        self.computerImage.alpha = 0
        self.userLoose.alpha = 0
        self.computerLoose.alpha = 0
        self.winOrLooseMessage.alpha = 0
        
        
        
    }
    
    @IBAction func playAgain(sender: AnyObject) {
        userInput = nil
    }
    
    
}
