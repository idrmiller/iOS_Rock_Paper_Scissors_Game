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
    
    
    override func viewWillAppear(animated: Bool) {
        
        determineWinner()
        
    }
    
    override func viewDidLoad() {
        userLoose.hidden = true
        computerLoose.hidden = true
        winOrLooseMessage.hidden = true
    }
    
    func determineWinner() {
        
        //TODO: Create random number between 1-3 and set to computer
        computerInput = Int(1 + arc4random_uniform(26) % 3)
        print("\(computerInput)")//Test to see if there is a good distribution of random number generator
        
        
        //TODO: Set User & Computer Image
        self.userImage.image = UIImage(named: "item\(userInput)")
        self.computerImage.image = UIImage(named: "item\(computerInput)")
        
        
        //Calculate winner and set lables
        if computerInput == 1 {
            
        }
        
        
        
    }
    
    @IBAction func playAgain(sender: AnyObject) {
        userInput = nil
    }
    
    
}
