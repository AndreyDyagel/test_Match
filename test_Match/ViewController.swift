//
//  ViewController.swift
//  test_Match
//
//  Created by Андрей on 31.07.2020.
//  Copyright © 2020 Андрей. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var attemptsLeftOutlet: UILabel!
    @IBOutlet weak var numberOneOutlet: UILabel!
    @IBOutlet weak var numberTwoOutlet: UILabel!
    @IBOutlet weak var signOutlet: UILabel!
    @IBOutlet weak var answerOutlet: UITextField!
    @IBOutlet weak var buttonOutlet: UIButton!
    @IBOutlet weak var nextExampleOutlet: UIButton!
    
    
    var numberAttempts: Int!{
        didSet {
            attemptsLeftOutlet.text = "attempts left = \(numberAttempts ?? 0)"
            if numberAttempts == 0 {
                alert()
            }
        }
    }
    
    var trueAnswer = 0
    var answerInt = 0
    var counter = 0
    
    var nextExampe: Int! {
        didSet {
            nextExampleOutlet.setTitle("Next example = \(nextExampe ?? 0)", for: .normal)
            if nextExampe == 0 {
                nextExampleOutlet.isEnabled = false
                nextExampe = 0
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberAttempts = 3
        nextExampe = 5
        getNumbers()
        
    }
    
    @IBAction func answerAction(_ sender: UIButton) {
        
        checkAnswer(answer: answerInt, answerTF: Int(answerOutlet.text ?? "0") ?? 0)
        replyCounter()
    }
    
    @IBAction func nextExampleAction(_ sender: UIButton) {
        
        skipExample()
    }
    
}

