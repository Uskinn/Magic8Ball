//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Sergey Nevzorov on 9/21/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let answers = ["Yes", "No", "Maybe", "Definitely", "Probably", "One Day"]
    

    @IBOutlet weak var answerLabel: UILabel!
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
      
        if motion == .MotionShake {
            let answerNumber = Int(arc4random_uniform(UInt32(answers.count)))
            let answer = answers[answerNumber]
            self.answerLabel.text = answer
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

