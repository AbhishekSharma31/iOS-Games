//
//  ViewController.swift
//  Game
//
//  Created by Abhishek Sharma on 2/6/15.
//  Copyright (c) 2015 Abhishek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstCardImageView: UIImageView!
    @IBOutlet weak var SecondCardImageView: UIImageView!
    @IBOutlet weak var PlayRoundButton: UIButton!
    @IBOutlet weak var BackgroundImageView: UIImageView!
    
    
    @IBOutlet weak var playerScore: UILabel!
    
    @IBOutlet weak var enemyScore: UILabel!
    var cardNamesArray: [String] = [ "card1","card2","card3","card4","card5","card6","card7","card8","card9","card10","card11","card12","card13"]
    
    var playerScoreTotal = 0
    var enemyScoreTotal = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
    
        //Randomize a number for the first imageview
        var firstRandomNumber:Int = Int(arc4random_uniform(13))
        
        // construct a string with random number
        var firstCardString:String = self.cardNamesArray[firstRandomNumber]
     
        // Set the firt image view to asset corresponding to randomized number
        
        self.FirstCardImageView.image = UIImage(named: firstCardString)
     
        //Randomize a number for the second imageview
        var secondRandomNumber:Int = Int(arc4random_uniform(13))
        
        // construct a string with random number
        var secondCardString:String = self.cardNamesArray[secondRandomNumber]
        
        // Set the second image view to asset corresponding to randomized number
        
        self.SecondCardImageView.image = UIImage(named: secondCardString)
        
        
        //Determine the higher card
        
        if firstRandomNumber > secondRandomNumber{
            //TODO: first card is larger
            playerScoreTotal += 1
            self.playerScore.text = String(playerScoreTotal)
            
        }
        else if firstRandomNumber == secondRandomNumber
        {
            //TODO: numbers are equal
        
        
        }
        
        else
        {
            //TODO: second card is larger
            
        enemyScoreTotal += 1
            self.enemyScore.text = String(enemyScoreTotal)
        
        }
        
    
    }

}

