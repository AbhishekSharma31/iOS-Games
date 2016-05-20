//
//  webdemoViewController.swift
//  Project2
//
//  Created by Abhishek Sharma on 3/26/16.
//  Copyright © 2016 Abhishek. All rights reserved.
//

import UIKit


/*

    UIWebView <---------- NSURLRequest <----------- NSURL

*/

class webdemoViewController: UIViewController, UIWebViewDelegate{
    
    var webDemo : UIWebView?
    func loadMyWeb(){
        
        let webURL = NSURL(string: "http://www.facebook.com")
        let webRequest = NSURLRequest(URL: webURL!)
        
        webDemo = UIWebView(frame: CGRectMake(10,10,300,400))
        webDemo!.loadRequest(webRequest)
        webDemo!.delegate = self
        self.view.addSubview(webDemo!)
    
    
    }
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool
    {
        print("URL is \(request.URL?.absoluteString)")
        return true;
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.edgesForExtendedLayout = UIRectEdge.None
        loadMyWeb()
        
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
