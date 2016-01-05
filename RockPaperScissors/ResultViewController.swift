//
//  ResultViewController.swift
//  RockPaperScissors
//
//  Created by MacbookPRV on 17/12/2015.
//  Copyright © 2015 Pastouret Roger. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var systemWeapon:Int?
    var playerWeapon:Int?
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var mesResult: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        
        
    let systemWeapon = self.systemWeapon
    let playerWeapon = self.playerWeapon
        
        if systemWeapon != nil && playerWeapon != nil {
            
            if systemWeapon == playerWeapon {

                // a draw
                self.resultImage.image=UIImage(named: "a_draw")
                self.mesResult.text="It's a draw!"
                self.mesResult.textColor=UIColor.blackColor()
            }
                
            else {
                
                switch playerWeapon {
                    
                case 1?:
                    
                    if systemWeapon == 3 {
                        
                        //win!
                        self.mesResult.text="You win!"
                        self.mesResult.textColor=UIColor.greenColor()
                        self.resultImage.image=UIImage(named: "weapon1_weapon3")
                        
                    }
                    else {
                        //lose
                        self.mesResult.text="You lose!"
                        self.mesResult.textColor=UIColor.redColor()
                        self.resultImage.image=UIImage(named: "weapon2_weapon1")
                    }
                case 2?:
                    
                    if systemWeapon == 1 {
                        
                        //win!
                        self.mesResult.text="You win!"
                        self.mesResult.textColor=UIColor.greenColor()
                        self.resultImage.image=UIImage(named: "weapon2_weapon1")
                    }
                    else {
                        //lose
                        self.mesResult.text="You lose!"
                        self.mesResult.textColor=UIColor.redColor()
                        self.resultImage.image=UIImage(named: "weapon3_weapon2")
                    }
                    
                case 3?:
                    
                    if systemWeapon == 2 {
                        
                        //win!
                        self.mesResult.text="You win!"
                        self.mesResult.textColor=UIColor.greenColor()
                        self.resultImage.image=UIImage(named: "weapon3_weapon2")
                    }
                    else {
                        //lose
                        self.mesResult.text="You lose!"
                        self.mesResult.textColor=UIColor.redColor()
                        self.resultImage.image=UIImage(named: "weapon1_weapon3")
                    }
                    
                default:
                    break
                }
                
            }
            
        
        
        
        }
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func PlayAgain(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
