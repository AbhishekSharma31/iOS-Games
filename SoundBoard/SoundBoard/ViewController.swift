//
//  ViewController.swift
//  SoundBoard
//
//  Created by Abhishek Sharma on 2/15/16.
//  Copyright © 2016 Abhishek. All rights reserved.
//


import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    let soundFilenames = ["lightsaber", "blasterfiring", "chewyroar", "swvader", "setforsun"]

    var audioPlayers = [AVAudioPlayer]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Set up audio players
        
        for sound in soundFilenames {
            do {
                
                let url = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(sound, ofType: "wav")!)
                let audioPlayer = try AVAudioPlayer(contentsOfURL: url)
                audioPlayers.append(audioPlayer)
            }
            catch
            {
                //catch the error that is thrown
                audioPlayers.append(AVAudioPlayer())
                
            }
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buttonTapped(sender: UIButton) {
        // Get the audio player to correspond to the audio button they tapped
        
        let audioPlayer = audioPlayers[sender.tag]
        audioPlayer.play()
        
        
    }
}

