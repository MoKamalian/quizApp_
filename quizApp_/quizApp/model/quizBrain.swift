//
//  quizBrain.swift
//  Quizzler-iOS13
//
//  Created by Mo Kamalian on 2021-06-02.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quizQuestions = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
]
    // to keep track of the questions
    var questionNumber = 0
    var quizScore = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer ==  quizQuestions[questionNumber].correctA {
            quizScore += 1
            return true
        } else {
            return false
        }
    }
    
    // updates the question being displayed. Returns the question text
    func getQuestionText() -> String {
        return quizQuestions[questionNumber].text
    }
    
    // updates the progress bar as questions are answered
    func getProgress() -> Float{
        let resultant = Float(questionNumber + 1) / Float(quizQuestions.count)
        return resultant
    }
    
    // Keeps count of the next question
    mutating func nextQuestion() {
        if questionNumber + 1 < quizQuestions.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            quizScore = 0 
        }
        
    }
    
    func getScore() -> Int {
        return quizScore
    }
    
    // display the MC answers
    func questionOptions(choice: Int) -> String{
         return  quizQuestions[questionNumber].answers[choice]
    }
    
}



