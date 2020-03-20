//
//  PushPostGPS.swift
//  LocationTest
//
//  Created by Alex Marfutin on 20.03.2020.
//  Copyright © 2020 G9. All rights reserved.
//

import Foundation

final class PushPostGPS : NSObject {
    
    var GpsData = [String]()
    
    func getResult() {
        if UserDefaults().array(forKey: "cellData") as? [String] != nil {
            GpsData = UserDefaults().array(forKey: "cellData") as! [String]
        }
        //let headers=["Content-Type": "application/json"]
        let jsonData=["gpsData" : GpsData] as [String : [String]]
        
        guard let postData = try? JSONSerialization.data(withJSONObject: jsonData, options: []) else {
            return
        }
        
        if let url = URL(string:"https://ptsv2.com/t/3cojy-1584705443/post") {
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            //request.allHTTPHeaderFields = headers
            request.httpBody = postData
            
            let task = URLSession.shared.dataTask(with: request) {(data, response, error) in
                guard data != nil else {
                    return
                }
                
            }
            task.resume()
        }
    }
    
}
