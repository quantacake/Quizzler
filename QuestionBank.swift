//
//  QuestionBank.swift
//  Quizzler
//
//  Created by ted diepenbrock on 7/20/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank {
    var list = [Question]()
    
    init() {
        // create quiz item and append to list
        let item = Question(text: "Valentines day is banned in Saudi Arabia.", correctAnswer: true)
        
        // add question to list of questions
        list.append(item)
        
        // skipping one step ahead
        list.append(Question(text: "A slugs blood is green", correctAnswer: true))
        
        list.append(Question(text: "Approximately one quarter of human bones are in the feet", correctAnswer: true))
        
        list.append(Question(text: "The total surface area of two human lungs is approximately 70 square meters", correctAnswer: true))
        
        list.append(Question(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat", correctAnswer: true))
        
        list.append(Question(text: "It is illegal to pee in the ocean in Portugal", correctAnswer: true))
        
        list.append(Question(text: "You can lead a cow down stairs but not up stairs", correctAnswer: true))
        
        list.append(Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant", correctAnswer: false))
        
        list.append(Question(text: "No piece of square dry paper can be folded in half more than 7 times.", correctAnswer: false))
        
        list.append(Question(text: "If you fold a piece of paper 103 times, its thickness will be the size of the universe.", correctAnswer: true))
        
    }
}
