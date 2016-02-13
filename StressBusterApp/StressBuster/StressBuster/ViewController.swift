//
//  ViewController.swift
//  StressBuster
//
//  Created by Abhishek Sharma on 2/11/16.
//  Copyright (c) 2016 Abhishek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var scoreLabel : UILabel?
    var lifeLabel : UILabel?
    
    var gameBG: UIImageView?
    var pumpkin: UIImageView?
    
    var score = 0
    var life = 3
    
    
    var speedX : CGFloat = 3.0
    var speedY : CGFloat = 3.0
    
    var isGameOver = false
    
    var gameOverLabel: UILabel?
    
    
    func loadGameLabels(){
        
        scoreLabel = UILabel(frame: CGRectMake(10, 10, 150, 40))
        scoreLabel!.text = "Score : \(score)"
        scoreLabel!.font = UIFont.boldSystemFontOfSize(25.0)
        scoreLabel!.textColor = UIColor.redColor()
        self.view.addSubview(scoreLabel!)
        
        
        lifeLabel = UILabel(frame: CGRectMake(160, 10, 150, 40))
        lifeLabel!.text = "Life : \(life)"
        lifeLabel!.font = UIFont.boldSystemFontOfSize(25.0)
        lifeLabel!.textColor = UIColor.redColor()
        self.view.addSubview(lifeLabel!)
        
        
    }
    
    
    func loadGameImages(){
        
        let tempImg = UIImage(named: "bg_1.png")
        gameBG = UIImageView(image: tempImg)
        self.view.addSubview(gameBG!)
        
        
        let tempImg1 = UIImage( named: "1")
        pumpkin = UIImageView(image: tempImg1)
        pumpkin!.center = CGPointMake(100, 280)
        self.view.addSubview(pumpkin!)
        
    }
    
    func updateGame(){
        
      //  println("updateGame")
        
        if !isGameOver{
            
            
            pumpkin!.center = CGPointMake(pumpkin!.center.x + speedX, pumpkin!.center.y + speedY)
            
            if pumpkin?.frame.origin.x <= 0.0 || pumpkin!.center.x + (pumpkin!.frame.size.width/2.0) >= self.view.frame.size.width
            {
                speedX = -speedX
            }
            if pumpkin!.frame.origin.y <= 0.0 || pumpkin!.center.y + (pumpkin!.frame.size.height/2.0) >= self.view.frame.size.height
            {
                speedY = -speedY
            }
            
        }
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.yellowColor()
        loadGameImages()
        loadGameLabels()
        NSTimer.scheduledTimerWithTimeInterval((1.0/30.0), target: self, selector: Selector("updateGame"), userInfo: nil, repeats: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {

       // var touch = touches.anyObject() as UITouch

        let touch = touches.first
        pumpkin!.userInteractionEnabled = true

        
        if !isGameOver{
            
            if touch!.view == pumpkin{
                
                score++
                
                if (speedX > 0.0){
                    
                    speedX = speedX + 1.0
                }
                else
                {
                    
                    speedX = speedX - 1.0
                }
                if (speedY >= 0.0){
                    
                    speedY = speedY + 1.0
                }
                else
                {
                    speedY = speedY - 1.0
                }
                
                scoreLabel!.text = "Score: \(score)"
            }
                
            else
            {
                life--;
                if life <= 0
                {
                    life = 0
                    
                    gameOverLabel = UILabel(frame: self.view.frame)
                    gameOverLabel!.text = "Game Over"
                    gameOverLabel!.font = UIFont.boldSystemFontOfSize(40.0)
                    gameOverLabel!.textColor = UIColor.whiteColor()
                    gameOverLabel!.textAlignment = NSTextAlignment.Center
                    gameOverLabel!.userInteractionEnabled = true
                    self.view.addSubview(gameOverLabel!)
                    
                    isGameOver = true
                    
                }
                lifeLabel!.text = "Life : \(life)"
            }
        
        }
        else
        {
        
            if touch!.view == gameOverLabel{
                
                
                speedX = 3.0
                speedY = 3.0
                
                score = 0
                life = 3
                
                
                scoreLabel!.text = "Score : \(score)"
                lifeLabel!.text = "Life : \(life)"
                
                gameOverLabel!.removeFromSuperview()
                gameOverLabel = nil
                
                isGameOver = false
                
            }
        
            
        }
        
        
    }
    
    
}

