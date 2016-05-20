//
//  SOAPDemoController.swift
//  Project2
//
//  Created by Abhishek Sharma on 5/1/16.
//  Copyright © 2016 Abhishek. All rights reserved.
//

import UIKit

class SOAPDemoViewController: UIViewController {

    var tipParser: SOAPTipParser?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.edgesForExtendedLayout = UIRectEdge.None
        
        tipParser = SOAPTipParser()
        tipParser?.getTerrorSafetyTips()
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
