//
//  ClassroomSystem.swift
//  PrioryAdventure
//
//  Created by Hypatia Pine on 1/14/16.
//  Copyright © 2016 Hypatia Pine. All rights reserved.
//

import Foundation

class ClassroomSystem {
    
    let name: String
    let classrooms: [Classrooms]
    var randomClassroom: Classrooms? {
        if classrooms.isEmpty {
            return nil
        } else {
            let index = Int(arc4random_uniform(UInt32(classrooms.count)))
            return classrooms[index]
        }
    }
    
    init(name: String, classrooms:[Classrooms]) {
        self.name = name
        self.classrooms = classrooms
    }
    
}

//20-25 minutes