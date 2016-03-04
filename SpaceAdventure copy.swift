/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation

class SpaceAdventure {
    
    let planetarySystem: PlanetarySystem
    
    init(planetarySystem:  PlanetarySystem) {
        self.planetarySystem = planetarySystem
    }
    
    func start() { //starts function 
        displayIntroduction()
        greetAdventurer()
        if (!planetarySystem.planets.isEmpty) {
            print("Let's go on an adventure!")
            determineDestination()
        }
    }
 
    private func displayIntroduction() {
        print("Welcome to our \(planetarySystem.name)!")
        print("There are \(planetarySystem.planets.count) many teachers to visit.")
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
        while !(decision == "Y" || decision == "N") { //player chooses "Y" or "N" if they want to travel to another planet
            decision = responseToPrompt("Shall I randomly choose a classroom for you to visit? (Y or N)")
            if decision == "Y" {
                if let classroom = planetarySystem.randomPlanet {
                    visit(classroom.name)
                } else {
                    print("Sorry, but there are no classrooms in this system.")
                }
            } else if decision == "N" {
                let planetName = responseToPrompt("Ok, name the classroom you would like to visit...")
                visit(planetName)
            } else {
                print("Sorry, I didn't get that.")
            }
        }
    }
    
    private func visit(planetName: String) {
        print("Traveling to \(planetName)...")
        for planet in planetarySystem.planets {
            if planetName == planet.name {
                print("Arrived at \(planet.name). \(planet.description)")
            }
        }
    }
}