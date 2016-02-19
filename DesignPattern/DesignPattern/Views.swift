//
//  Views.swift
//  DesignPattern
//
//  Created by Hiep Nguyen on 2/19/16.
//  Copyright © 2016 Zyncas. All rights reserved.
//

import Foundation

protocol View {
    
    func execute()
}

class PersonListView: View {
    
    private let people: [Person]
    
    init(data: [Person]) {
        
        self.people = data
    }
    
    func execute() {
        
        for person in people {
            
            print(person)
        }
    }
}