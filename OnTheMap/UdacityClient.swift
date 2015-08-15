//
//  UdacityClient.swift
//  OnTheMap
//
//  Created by Stephen Skubik-Peplaski on 8/5/15.
//  Copyright (c) 2015 Stephen Skubik-Peplaski. All rights reserved.
//

import Foundation
import Alamofire

extension Request {
    public static func udacityResponseJSONSerializer(options: NSJSONReadingOptions = .AllowFragments) -> GenericResponseSerializer<AnyObject> {
        return GenericResponseSerializer {request, response, data in
            if (data == nil || data?.length == 0) {
                return (nil, nil)
            }
            
            let trimmedData = data!.subdataWithRange(NSMakeRange(5, data!.length - 5))
            
            var serializationError: NSError?
            let JSON: AnyObject? = NSJSONSerialization.JSONObjectWithData(trimmedData, options: options, error: &serializationError)
            
            return (JSON, serializationError)
        }
    }
    
    public func responseUdacityJSON(
        options: NSJSONReadingOptions = .AllowFragments,
        completionHandler: (NSURLRequest, NSHTTPURLResponse?, AnyObject?, NSError?) -> Void)
        -> Self
    {
        return response (
            responseSerializer: Request.udacityResponseJSONSerializer(options: options),
            completionHandler: completionHandler
        )
    }
}

public class UdacityClient {
    
    public func login(username: String, password: String) {
        let parameters = [
            "udacity" : [
                "username" : username,
                "password" : password
            ]
        ]
        
        Alamofire.request(.POST, UdacityClient.baseURL, parameters: parameters , encoding: .JSON)
            .responseUdacityJSON { _, _, JSON, _ in
                debugPrintln(JSON)
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