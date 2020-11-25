//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//created variable for each dice. created as variable so each dice could be changed to different dice number
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

//created a IBAction function which will allow the button to do something (have an action)
    @IBAction func rollButtonPressed(_ sender: UIButton) {
     
// simplified the Array for the dice and created a let which will allow the Array (diceArray in this case) stay as it is and we can just random each image
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
// then created a who.what=value (so dice Image 1.the image needs changed = the Array, which is the group of dice pictures). Originally had int.random but simplified with the below
        diceImageView1.image = diceArray.randomElement()
        
        diceImageView2.image = diceArray.randomElement()
        
    }
    
}

