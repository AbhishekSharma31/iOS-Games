//
//  AppDelegate.swift
//  Project2
//
//  Created by Abhishek Sharma on 2/27/16.
//  Copyright © 2016 Abhishek. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var baseController: UITabBarController?
    
    func createTabs(){
        
        var tabControllers : [UIViewController] = []
        
        let tabController1 = ViewController()
        let subcontroller1 = UINavigationController(rootViewController: tabController1)
        
        subcontroller1.tabBarItem!.title = "Home"
        subcontroller1.tabBarItem!.image = UIImage(named: "home")
        subcontroller1.navigationBar.topItem!.title = "Home"
        tabControllers.append(subcontroller1)
        
        let tabController2 = GalleryViewViewController()
        let subcontroller2 = UINavigationController(rootViewController: tabController2)

        subcontroller2.tabBarItem!.title = "Gallery"
        subcontroller2.tabBarItem!.image = UIImage(named: "gallery")
        subcontroller2.navigationBar.topItem!.title = "Gallery"
        tabControllers.append(subcontroller2)

        
        let tabController3 = AppsViewController()
        let subcontroller3 = UINavigationController(rootViewController: tabController3)

        subcontroller3.tabBarItem!.title = "Apps"
        subcontroller3.tabBarItem!.image = UIImage(named: "apps")
        subcontroller3.navigationBar.topItem!.title = "Apps"
        tabControllers.append(subcontroller3)
    
        let tabController4 = webdemoViewController()
        let subcontroller4 = UINavigationController(rootViewController: tabController4)
        
        subcontroller4.tabBarItem!.title = "Web Demo"
        subcontroller4.tabBarItem!.image = UIImage(named: "apps")
        subcontroller4.navigationBar.topItem!.title = "Web View"
        tabControllers.append(subcontroller4)
        
        let tabController5 = SOAPDemoViewController()
        let subcontroller5 = UINavigationController(rootViewController: tabController5)
        
        subcontroller5.tabBarItem!.title = "SOAP Demo"
        subcontroller5.tabBarItem!.image = UIImage(named: "soap")
        subcontroller5.navigationBar.topItem!.title = "SOAP Demo"
        tabControllers.append(subcontroller5)
        
        baseController = UITabBarController()
        baseController!.viewControllers = tabControllers
        
    }


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        createTabs()
        
        window!.rootViewController = baseController
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

