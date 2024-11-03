//
//  RMService.swift
//  Cartoon
//
//  Created by Muhammad Zubair on 03/11/2024.
//

import Foundation

/// 
final class RMService {
    //making the  constructor private so it's instances cannot be created
    //thus making it a single source of truth or singleton
    //making shared static so it is only accessible by the class itseld and not on any of its instances
    
    static let shared = RMService()
    private init(){
        
    }
    public func execute(_request: RMRequest, completion: @escaping () -> Void) {
        // Function implementation goes here
    }

}
