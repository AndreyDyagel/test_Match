//
//  RandomNumber.swift
//  test_Match
//
//  Created by Андрей on 31.07.2020.
//  Copyright © 2020 Андрей. All rights reserved.
//

import UIKit

extension ViewController {
    
    func randomNumber() -> Int {
        
        return Int.random(in: 0..<1000)
    }
    
    func randonSign() -> String {
        
        let random = ["+", "-"]
        return random[.random(in: 0...1)]
    }
}
