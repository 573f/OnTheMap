//
//  SSPWebClient.swift
//  OnTheMap
//
//  Created by Stephen Skubik-Peplaski on 8/5/15.
//  Copyright (c) 2015 Stephen Skubik-Peplaski. All rights reserved.
//

import Foundation

public class SSPWebClient {
    
    public func createRequest(method: String, urlString: String, body: NSData? = nil) {
        
    }
    
}

extension SSPWebClient {
    static let JSONContentType = "application/json"
    static let AcceptHeader = "Accept"
    static let ContentType = "Content-Type"
    static let HTTPScheme = "http"
    static let HTTPSScheme = "https"
}