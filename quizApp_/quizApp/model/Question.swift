//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Mo Kamalian on 2021-05-30.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answers: [String]
    let correctA: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        correctA = correctAnswer
    }
    
}







