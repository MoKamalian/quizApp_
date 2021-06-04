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
    let answer: [String]
    let correctA: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answer = a
        correctA = correctAnswer
    }
    
}







