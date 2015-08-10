//
//  SSPWebClient.swift
//  OnTheMap
//
//  Created by Stephen Skubik-Peplaski on 8/5/15.
//  Copyright (c) 2015 Stephen Skubik-Peplaski. All rights reserved.
//

import Foundation
import Alamofire

public class UdacityClient {
    
    public func login(username: String, password: String) {
        let parameters = [
            "udacity" : [
                "username" : username,
                "password" : password
            ]
        ]
        
        Alamofire.request(.POST, UdacityClient.baseURL, parameters: parameters , encoding: .JSON)
            .responseJSON { _, _, JSON, _ in
                println(JSON)
        }
    }
    
}

extension UdacityClient {
    static let baseURL = "https://www.udacity.com/api/session"
    static let JSONContentType = "application/json"
    static let AcceptHeader = "Accept"
    static let ContentType = "Content-Type"
    static let HTTPScheme = "http"
    static let HTTPSScheme = "https"
}