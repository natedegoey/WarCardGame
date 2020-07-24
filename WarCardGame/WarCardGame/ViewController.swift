//
//  ViewController.swift
//  WarCardGame
//
//  Created by Nathan DeGoey on 2020-06-12.
//  Copyright © 2020 Nathan DeGoey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlet means that it references an object in the story board we called leftImageView
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore:Int = 0
    var rightScore:Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //IBAction essentially says this function is connected to an action represented in the story board
    @IBAction func dealTapped(_ sender: Any) {
        
        //Randomize numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        //update image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        //Compare random numbers and increase score
        if leftNumber > rightNumber {
            // Left Side Wins
            leftScore += 1
            
            leftScoreLabel.text = String(leftScore)
        } else if rightNumber > leftNumber{
            // Right Side Wins
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
        } else {
            //Tie, must press deal again
        }
    }
    
    
    
    
    
    
    
    
}

