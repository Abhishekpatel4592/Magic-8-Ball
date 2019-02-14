//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Abhishek Patel on 2018-12-20.
//  Copyright © 2018 Abhishek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randonBallNumber = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            newBallImage()
     
    }

    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    //Function 
    func newBallImage(){
        randonBallNumber = Int(arc4random_uniform(4))
        imageView.image = UIImage.init(named: ballArray[randonBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
}

