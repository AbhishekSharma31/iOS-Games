//
//  GalleryViewViewController.swift
//  Project2
//
//  Created by Abhishek Sharma on 2/27/16.
//  Copyright © 2016 Abhishek. All rights reserved.
//

import UIKit

class GalleryViewViewController: UIViewController {
    
    
    var ImageView: UIImageView?
    
    func loadImage(){
        
        var fileName : String?
        
        if UIDevice.currentDevice().userInterfaceIdiom == .Pad{
            
            fileName = "gallery.png"
        }
        else
        {
            fileName = "home.png"

        }
        
        let tempImg = UIImage(named: fileName!)
        ImageView = UIImageView(image: tempImg)
        if UIDevice.currentDevice().userInterfaceIdiom == .Pad{
           ImageView?.center = CGPointMake(450, 450)

        }
        else
        {
            ImageView?.center = CGPointMake(150, 150)
 
        }
        
        ImageView!.center = self.view.center
        self.view.addSubview(ImageView!)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.redColor()
        self.edgesForExtendedLayout = UIRectEdge.None

        loadImage()
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

}
