//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nextQuestion()
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
    }
    
    
    func updateUI() {
    
        scoreLabel.text = "score: \(score)"
        
        progressLabel.text = "\(questionNumber + 1) / 10"
        
        progressBar.frame.size.width = (view.frame.size.width / 10) * CGFloat(questionNumber + 1)
    }
    

    func nextQuestion() {
        
        if questionNumber <= 9 {
            // if so, update question to next question
            questionLabel.text = allQuestions.list[questionNumber].questionText
            
            updateUI()
        }
        else {
            let alert = UIAlertController(title: "Awesome", message: "Youve finished all the questions, do you want to start over", preferredStyle: .alert)
            
            let restartAction = UIAlertAction (title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
            
        }
        
    }
    
    // compare correct answer with picked answer
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            //print("You got it!")
            ProgressHUD.showSuccess("Correct")
            score += 1
        }
        else {
            //print("wrong!")
            ProgressHUD.showError("Wrong!")
        }
        
        questionNumber += 1
        nextQuestion()
    }
    
    
    func startOver() {
        
        score = 0
        questionNumber = 0
        nextQuestion()
       
    }
    

    
}
