//
//  AppsViewController.swift
//  Project2
//
//  Created by Abhishek Sharma on 2/27/16.
//  Copyright © 2016 Abhishek. All rights reserved.
//

import UIKit

//UITableView <----------------- Array

class AppsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableOfApps : UITableView?
    
    var apps:[AppModel!]?
    
    
    func loadTableOfApps(){
        
        //apps = ["Sharma","NYU","Abhishek"]
        let provider =  AppProviderModel()
        
        
        apps = provider.getApps()
        if UIDevice.currentDevice().userInterfaceIdiom == .Pad{
            tableOfApps = UITableView(frame: CGRectMake(10, 10, 700, 900))

        }
        else
        {
            tableOfApps = UITableView(frame: CGRectMake(10, 10, 300, 400))

        }
        tableOfApps!.delegate = self
        tableOfApps!.dataSource = self
        
        self.view.addSubview(tableOfApps!)
    
    }
    
   

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    
    {
       //return 10
       return apps!.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    
    {
        var myCell : AppTableViewCell?
        
        myCell=tableOfApps!.dequeueReusableCellWithIdentifier("apps") as! AppTableViewCell!
        
        if myCell == nil{
        
            myCell = AppTableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "apps")
            
        }
        
        let app = apps![indexPath.row] as AppModel
        
       // myCell!.textLabel!.text = "Row \(indexPath.row)"
        //myCell!.textLabel!.text = name
        myCell!.iconView!.image = app.icon
        myCell!.namelable!.text = app.name
        myCell!.publisherabel!.text = app.publisherName
        
        return myCell!
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        if UIDevice.currentDevice().userInterfaceIdiom == .Pad{
            return 200.0
        }
        else
        {
            return 80.0
        }
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        
        print("didSelectRowAtIndexPath \(indexPath.row)")
        
        let app = apps![indexPath.row] as AppModel!
        let detailController = AppDetailViewController(appModel: app)
        self.navigationController!.pushViewController(detailController, animated: true)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.greenColor()
        self.edgesForExtendedLayout = UIRectEdge.None

        loadTableOfApps()
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
