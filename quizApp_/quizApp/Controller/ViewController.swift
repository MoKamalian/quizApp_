//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionView: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var optionOne: UIButton!
    @IBOutlet weak var optionTwo: UIButton!
    @IBOutlet weak var optionThree: UIButton!
    @IBOutlet weak var scoreKeeper: UILabel!
    
    
    var quizBrain = QuizBrain()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        //The user will give either a True or False answer and we check this against the actual answer
        let userAnswer = sender.currentTitle
        let userGotitRight = quizBrain.checkAnswer(userAnswer!)
        
        if userGotitRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
    
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    
    @objc func updateUI() {
        optionOne.setTitle(quizBrain.questionOptions(choice: 0), for: .normal)
        optionTwo.setTitle(quizBrain.questionOptions(choice: 1), for: .normal)
        optionThree.setTitle(quizBrain.questionOptions(choice: 2), for: .normal)
        
        questionView.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreKeeper.text = "Score: \(quizBrain.getScore())"
        
        optionOne.backgroundColor = UIColor.clear
        optionTwo.backgroundColor = UIColor.clear
        optionThree.backgroundColor = UIColor.clear
    }


}

