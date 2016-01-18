//
//  ViewController.swift
//  iOS_Rock_Paper_Scissors
//
//  Created by David Miller on 1/17/16.
//  Copyright © 2016 LM Labs. All rights reserved.
//

import UIKit


//Created global variables that allows all viewcontrollers to access the userInput and Computer input
var userInput: Int?
var computerInput: Int?

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        userInput = 0
        computerInput = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "scissorSegue" {
            userInput = 3
            segue.destinationViewController as! SuccessViewController
        }
    }
    
    //This button changes to the next segue through the storyboard connection
    @IBAction func rockButton(sender: AnyObject) {
        userInput = 1
        
    }
    
    //This action changes to the next segue through code alone.
    @IBAction func paperButton(sender: AnyObject) {
        userInput = 2
        performSegueWithIdentifier("handSegue", sender: self)
        
    }
    
    @IBAction func scissorButton(sender: AnyObject) {
        
    }
    
    
    


}

