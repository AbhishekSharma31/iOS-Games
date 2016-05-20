//
//  AppDetailViewController.swift
//  Project2
//
//  Created by Abhishek Sharma on 2/27/16.
//  Copyright © 2016 Abhishek. All rights reserved.
//

import UIKit

class AppDetailViewController: UIViewController {
    

    init(appModel app:AppModel!){
       
        super.init(nibName:nil, bundle: nil)
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.edgesForExtendedLayout = UIRectEdge.None
        self.title = "App Detail"
        
        let iconView = UIImageView(image: app.icon)
        iconView.center = CGPointMake(200,200)
        self.view.addSubview(iconView)
        
        let nameLabel = UILabel(frame: CGRectMake(10,10,300,40))
        nameLabel.text = app.name
        self.view.addSubview(nameLabel)
        
        let publisherLabel = UILabel(frame: CGRectMake(10,60,300,40))
        publisherLabel.text = app.publisherName
        self.view.addSubview(publisherLabel)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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

}
