//
//  ClassroomAdventure.swift
//  PrioryAdventure
//
//  Created by Hypatia Pine on 1/14/16.
//  Copyright © 2016 Hypatia Pine. All rights reserved.
//

import Foundation

class classroomAdventure {
    
    let classroomSystem: Classrooms
    
    init(classroomSystem:  Classrooms) {
        self.classroomSystem = classroomSystem
    }
    
    func start() { //starts function
        displayIntroduction()
        greetAdventurer()
        if (!prioryClassrooms.classrooms.isEmpty) {
            print("Let's go on an adventure!")
            determineDestination()
        }
    }
    
    private func displayIntroduction() {
        print("Welcome to our \(prioryClassrooms.name)!")
        print("There are \(prioryClassrooms.classrooms.count) many teachers to visit.")
    }
    
    private func responseToPrompt(prompt: String) -> String {
        print(prompt)
        return getln()
    }
    
    private func greetAdventurer() {
        let name = responseToPrompt("What is your name?")
        print("Nice to meet you, \(name). My name is Eliza, I'm an old friend of Siri.")
    }
    
    private func determineDestination() {
        var decision = "" // Start with empty String
        while !(decision == "Y" || decision == "N") { //player chooses "Y" or "N" if they want to visit another teacher or classroom
            decision = responseToPrompt("Shall I randomly choose a classroom for you to visit? (Y or N)")
            if decision == "Y" {
                if let classrooms = classroomSystem.randomClassrooms {
                    visit(classrooms.name)
                } else {
                    print("Sorry, but there are no classrooms in this system.")
                }
            } else if decision == "N" {
                let classroomName = responseToPrompt("Ok, name the classroom you would like to visit by typing in the name of the teacher in that classroom. You can choose from Ms. Kiang, Ms. Yang, Mr. Parke, Ms. Hirasuna, Ms. Makiya, Mr. Hamura, Ms. Robinson, Mr. Wyrick, Ms. Field, Ms. Wredt, Ms. Castro, Ms. Lepick, and Ms. Donathan.")
                visit(classroomName)
            } else {
                print("Sorry, I didn't get that.")
            }
        }
    }
    
    private func visit(classroomName: String) {
        print("Traveling to \(classroomName)...")
        for classroom in prioryClassrooms.classrooms {
            if classroomName == classroom.name {
                print("Arrived at \(classroom.name). \(classroom.description)")
            }
        }
    }
}