//
//  AppProviderModel.swift
//  Project2
//
//  Created by Abhishek Sharma on 2/27/16.
//  Copyright © 2016 Abhishek. All rights reserved.
//

import UIKit

class AppProviderModel: NSObject {
    
    func getApps() ->[AppModel!]{
      
         var apps :[AppModel!] = []
        
        let app1 = AppModel()
        app1.icon = UIImage(named:"home")
        app1.name = "iAntiVirus"
        app1.publisherName = "NYU ITS"
        apps.append(app1)
        
        let app2 = AppModel()
        app2.icon = UIImage(named:"gallery")
        app2.name = "Money Book"
        app2.publisherName = "NYU ITS"
        apps.append(app2)
        
        let app3 = AppModel()
        app3.icon = UIImage(named:"apps")
        app3.name = "Geo Calender"
        app3.publisherName = "NYU ITS"
        apps.append(app3)
        
        return apps
    
    }
    

}
