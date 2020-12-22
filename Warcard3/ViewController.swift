//
//  ViewController.swift
//  Warcard3
//
//  Created by Joe Curran on 16/05/2020.
//  Copyright © 2020 Badgerstreak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //dispose of any resourses that can be recreated
    }

    @IBAction func DealTapped(_ sender: Any) {
        
        //randomise two numbers
        let leftRandomNumber = arc4random_uniform(13) + 2
        
        let rightRandomNumber = arc4random_uniform(13) + 2
        // change image view
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        //compare the numbers
        
        if leftRandomNumber > rightRandomNumber {
            //update scores
            leftScore += 1
            //update the label
            leftScoreLabel.text = String(leftScore)
            
        }
        
        if rightRandomNumber > leftRandomNumber {
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
            
            
        }
        
        if leftRandomNumber == rightRandomNumber {
            
            
        }
        
    }
    

}

