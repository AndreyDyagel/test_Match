//
//  Alert.swift
//  test_Match
//
//  Created by Андрей on 31.07.2020.
//  Copyright © 2020 Андрей. All rights reserved.
//

import UIKit

extension ViewController {
    
    func alert() {
        let alertController = UIAlertController(title: "Начать заново!",
                                                message: """
У вас закончились попытки!
Правильных ответов - \(trueAnswer)
""",
                                                preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Restart",
                                        style: .default) { (_) in
                                            self.numberAttempts = 3
                                            self.trueAnswer = 0
                                            self.counter = 0
                                            self.nextExampe = 5
                                            self.nextExampleOutlet.isEnabled = true
                                            self.getNumbers()
                                            self.answerOutlet.text = ""
                                            self.view.backgroundColor = .white
        }
        alertController.addAction(alertAction)
        present(alertController,animated: true)
        
    }
}
