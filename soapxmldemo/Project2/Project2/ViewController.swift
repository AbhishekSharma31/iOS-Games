//
//  ViewController.swift
//  Project2
//
//  Created by Abhishek Sharma on 2/27/16.
//  Copyright © 2016 Abhishek. All rights reserved.
//

import UIKit


/*

1. While setting the view frame
2. While setting the size
3. While setting the view center
4. While setting the image of UIImage

*/

class ViewController: UIViewController {

    var nameLabel : UILabel?
    
    func loadNamelabel(){
        
        
        if UIDevice.currentDevice().userInterfaceIdiom == .Pad{
           nameLabel = UILabel(frame: CGRectMake(10,10,700,80))
            nameLabel?.font = UIFont.boldSystemFontOfSize(50.0)

        }
        else
        {
            nameLabel = UILabel(frame: CGRectMake(10,10,300,40))
            nameLabel?.font = UIFont.boldSystemFontOfSize(30.0)

        }
        
        
        let name = "Abhishek Sharma"
        nameLabel = UILabel(frame: CGRectMake(10,10,300,40))
        nameLabel?.text = name
        nameLabel?.textColor = UIColor.blueColor()
        nameLabel?.backgroundColor = UIColor.whiteColor()
        nameLabel?.textAlignment = NSTextAlignment.Center
        
        self.view.addSubview(nameLabel!)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.yellowColor()
        self.edgesForExtendedLayout = UIRectEdge.None
        
        loadNamelabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

