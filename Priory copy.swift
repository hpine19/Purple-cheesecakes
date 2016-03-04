//
//  main.swift
//  PrioryAdventure
//
//  Created by Hypatia Pine on 1/14/16.
//  Copyright © 2016 Hypatia Pine. All rights reserved.
//

import Foundation

//description of tecahers and their classrooms
let systemName = "Priory Classrooms"
let classroomData = [ //replaces the repetitive code
    "Ms. Kiang": "Ms. Kiang teaches 6th grade math and science and an Intro to Computer Programming class for high school students.",
    "Ms. Yang": "Ms. Yang tecahes Mandarin I, II, III, and IV. She is also the advisor for the Chinese Culture CLub. ",
    "Mr. Parke": "Mr. Parke teaches Geometry and Pre-Calculus for highschool students.",
    "Ms. Hirasuna": "Ms. Hirasuna teaches Biology, AP Biology, and Behavioral Science. ",
    "Ms. Makiya": "Ms. Makiya is the Priory athletics teacher. She teaches a majority of the PE classes here at the Priory. Y",
    "Mr. Hamura": "Mr. Ham tecahes 7th and 8th grade science.",
    "Ms. Robinson": "Ms. Robinson teaches 7th grade American History and 8th grade Geography.",
    "Mr. Wyrick": "Mr. Wyrick teaches 7th and 8th grade English and Literature.",
    "Ms. Field": "Ms. Field teaches World History I and II for Freshmen and Sophmores.",
    "Ms. Wredt": "Ms. Wredt teaches English 9 and British Literature for Seniors. She is also the advisor for the Speech and Debate club.",
    "Ms. Castro": "Ms. Castro teaches Middle School Choir and the Chamber Choir for middle school and highschool. She also participates the the annual Priory Spring Musical.",
    "Ms. Lepick": "Ms. Lepick teaches Religion to the entire elementary and Middle School. She also teaches World Religions and Practical Theology to highschool students.",
    "Ms. Donathan": "Ms. Donathan tecahes art to Middle Schoolers and High Schoolers. She is also the Junior class advisor."
]
//10 minutes

//replaces the repetitive code
let classrooms = classroomData.map { name, description in Classrooms(name: name, description: description) }

let prioryClassrooms = ClassroomSystem(name: systemName, classrooms: classrooms)
let adventure = PrioryClassrooms(classroomSystem: prioryClassrooms)
adventure.start()

//15 minutes




