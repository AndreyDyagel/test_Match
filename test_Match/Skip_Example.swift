//
//  Next_Example.swift
//  test_Match
//
//  Created by Андрей on 04.08.2020.
//  Copyright © 2020 Андрей. All rights reserved.
//

import UIKit

extension ViewController {
    
    func skipExample() {
        if nextExampe != 0 {
            nextExampe -= 1
            counter = 0
            getNumbers()
        }
    }
    
    func replyCounter() {
       print(counter)
        if counter == 5 {
            nextExampe += 1
            counter = 0
        }
    }
}
