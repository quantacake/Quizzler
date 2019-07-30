//
//  Question.swift
//  Quizzler
//
//  Created by ted diepenbrock on 7/20/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

// slightly lighter weight than uikit
import Foundation

class Question {
    
    // let = a constant (static)
    // initializing data types
    //
    let questionText : String
    let answer : Bool
    
    // initializer
    // init defines an event
    init(text: String, correctAnswer: Bool) {
        // initial values
        questionText = text
        answer = correctAnswer
    }
    
}

//class myOtherClass {
//
//    // create new class
//    let question = Question(text: "Whats the meaning of life", correctAnswer: true)
//    let question = Question(text: "Whats the meaning of life", correctAnswer: true)
//
//
//}
