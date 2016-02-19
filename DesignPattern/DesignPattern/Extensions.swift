//
//  Extensions.swift
//  DesignPattern
//
//  Created by Hiep Nguyen on 2/19/16.
//  Copyright © 2016 Zyncas. All rights reserved.
//

import Foundation

extension String {
    
    func split() -> [String] {
    
        return self.componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).filter({$0 != ""})
    }
}

extension Array {
    
    func unique<T: Equatable>() -> [T] {
        
        var uniqueValues = [T]()
        
        for value in self {
            
            if !(uniqueValues.contains(value as! T)) {
                
                uniqueValues.append(value as! T)
            }
        }
        
        return uniqueValues
    }
    
    func first<T>(test: T -> Bool) -> T? {
        
        for value in self {
            
            if test(value as! T) {
                
                return value as? T
            }
        }
        
        return nil
    }
}