//
//  GetNumbers.swift
//  test_Match
//
//  Created by Андрей on 31.07.2020.
//  Copyright © 2020 Андрей. All rights reserved.
//

import UIKit

extension ViewController {
    
    func getNumbers() {
        numberOneOutlet.text = "\(randomNumber())"
        numberTwoOutlet.text = "\(randomNumber())"
        signOutlet.text = randonSign()
        
        answerInt = answer(numberOne: Int(numberOneOutlet.text ?? "0") ?? 0, numberTwo: Int(numberTwoOutlet.text ?? "0") ?? 0, sign: signOutlet.text ?? "+")
        
    }
    
}
