//
//  ViewController.swift
//  iOS_Rock_Paper_Scissors
//
//  Created by David Miller on 1/17/16.
//  Copyright © 2016 LM Labs. All rights reserved.
//

import UIKit

var userInput = Int?()
var computerInput = Int?()


class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //This button changes to the next segue through the storyboard connection
    @IBAction func rockButton(sender: AnyObject) {
        userInput = 1
        
    }
    
    //This action changes to the next segue through code alone.
    @IBAction func paperButton(sender: AnyObject) {
        userInput = 2
        performSegueWithIdentifier("ResultsViewController", sender: self)
        
    }
    
    @IBAction func scissorButton(sender: AnyObject) {
        userInput = 3
        
    }
    
    
    


}

