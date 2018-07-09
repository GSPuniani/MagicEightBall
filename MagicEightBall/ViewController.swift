//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Gobind Puniani on 7/3/18.
//  Copyright © 2018 Gobind Puniani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Most likely", "Definitely not", "Maybe", "Ask again in two hours", "That would be a HARD no", "Does a bear poop in the woods?", "Possibly"]
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generateAnswer() {
        let maxIndex = UInt32(answers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        answerLabel.text = answers[randomIndex]
    }

    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateAnswer()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        generateAnswer()
    }
    
}

