//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by MacbookPRV on 17/12/2015.
//  Copyright © 2015 Pastouret Roger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func randomWeaponValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 3
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let controller = segue.destinationViewController as! ResultViewController
        controller.systemWeapon=randomWeaponValue()
        
        
        switch segue.identifier {
            case "rollscissors"?:
             controller.playerWeapon=2
            case "rollpaper"?:
            controller.playerWeapon=1
            
        default:
            break
        }
    }
    
    @IBAction func ActionPaper(sender: AnyObject) {
        
        self.performSegueWithIdentifier("rollpaper", sender: self)
        

    }
   
    @IBAction func ActionRock(sender: UIButton) {
        
        var controller : ResultViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        controller.systemWeapon=randomWeaponValue()
        controller.playerWeapon=3
        presentViewController(controller, animated: true, completion: nil)
        
    }
    
    
}

