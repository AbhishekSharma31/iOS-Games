//
//  SOAPTipParser.swift
//  Project2
//
//  Created by Abhishek Sharma on 5/1/16.
//  Copyright © 2016 Abhishek. All rights reserved.
//
/*
 To design a model (Provider Class) in Client-Service architect we follow following 5 golden steps.
 These steps can be used on any platform.
 
 Agent Model class design steps:
 1. Create an Agent Class (Model Class) SOAPTipParser
 2. Implement the agent purpose
 2.1 Get the data from the server
 2.2 Process the data
 3. Create a container (optional)
 4. Create the pure model class (optional)
 5. Implement the call back mechanism or feedback policy
 
 
 */

import UIKit

class SOAPTipParser: NSObject,NSXMLParserDelegate {

    var webData : NSMutableData?
    
    func getTerrorSafetyTips(){
        
        let soapMessage = "<?xml version=\"1.0\" encoding=\"utf-8\"?><soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\"><soap:Body><GetTerrorSafetyTips xmlns=\"http://tempuri.org/\" /></soap:Body></soap:Envelope>"
        
        
        
        /*
         There are 5 steps to get data from the server
         1. Create a URL Object
         2. Create a request object from URL
         3. Create a connection object using the request object
         4. Get response object through connection object
         5. Get data through the connection object
         
         */
        let url = NSURL(fileURLWithPath:"http://www.nimapinfotech.com/TerrorTipsWeb/Service1.asmx")
        let theRequest = NSMutableURLRequest(URL: url)
        
        theRequest.addValue("text/xml",forHTTPHeaderField:"Content-Type")
        theRequest.addValue("\(soapMessage.characters.count)", forHTTPHeaderField:"Content-Length")
        theRequest.HTTPMethod = "POST"
        theRequest.HTTPBody = soapMessage.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)
        var urlConnection = NSURLConnection(request: theRequest, delegate: self)
        
    }
    func connection(connection: NSURLConnection, didFailWithError error: NSError)
    {
        
    }
    func connection(connection: NSURLConnection, didReceiveResponse response: NSURLResponse)
    {
        webData = NSMutableData()
    }
    func connection(connection: NSURLConnection, didReceiveData data: NSData)
    {
        webData!.appendData(data)
    }
    func connectionDidFinishLoading(connection: NSURLConnection)
    {
        let xmlStr = NSString(data:webData!, encoding: NSUTF8StringEncoding)
        print("xmlstr is \(xmlStr)")
    }
    

    
    
}
