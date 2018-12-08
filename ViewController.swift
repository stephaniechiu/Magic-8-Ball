//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Stephanie on 12/1/18.
//  Copyright © 2018 Stephanie Chiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber = 0

    @IBOutlet weak var changeBallImages: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            newBallImage()
    }
    
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    func newBallImage() {
            randomBallNumber = Int.random(in: 0...4)
        changeBallImages.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }

}

