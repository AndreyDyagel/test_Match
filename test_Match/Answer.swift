//
//  Answer.swift
//  test_Match
//
//  Created by Андрей on 31.07.2020.
//  Copyright © 2020 Андрей. All rights reserved.
//

import UIKit

extension ViewController {
    
    func answer(numberOne: Int, numberTwo: Int, sign: String) -> Int {
        
        if sign == "+" {
            return numberOne + numberTwo
        } else if sign == "-" {
            return numberOne - numberTwo
        }
        return 0
    }
    
    func checkAnswer(answer: Int, answerTF: Int) {
        
        if answer == answerTF {
            view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            trueAnswer += 1
            counter += 1
        } else if answer != answerTF {
            view.backgroundColor = .red
            numberAttempts -= 1
            counter = 0
        }
        
        
        if numberAttempts != 0 {
            buttonOutlet.isEnabled = false
            nextExampleOutlet.isEnabled = false
            Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { (_) in
                self.view.backgroundColor = .white
                self.answerOutlet.text = ""
                self.getNumbers()
                self.buttonOutlet.isEnabled = true
                if self.nextExampe == 0 {
                    self.nextExampleOutlet.isEnabled = false
                } else {
                    self.nextExampleOutlet.isEnabled = true
                }
            }
        }
    }
}
