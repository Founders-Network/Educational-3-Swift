//
//  ViewController.swift
//  wow
//
//  Created by Joanna Chen on 2016-01-02.
//  Copyright © 2016 Joanna Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Here you can init your properties
    }
    
    var score : Int = 0
    

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var circle: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        button1.enabled = true
        button2.enabled = true
        button3.enabled = true
        button4.enabled = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func shuffleArray<T>(var array: [T]) -> [T] {
        for index in Array(0..<array.count) {
            let randomIndex = Int(arc4random_uniform(UInt32(index)))
            (array[index], array[randomIndex]) = (array[randomIndex], array[index])
        }
        return array
    }
    
    func randomBasicColors() {
        let blue = UIColor(red: 0x66/255, green: 0x99/255, blue: 0xff/255, alpha: 1.0)
        let orange = UIColor(red: 0xff/255, green: 0xcc/255, blue: 0x66/255, alpha: 1.0)
        let pink = UIColor(red: 0xff/255, green: 0x99/255, blue: 0x99/255, alpha: 1.0)
        let green = UIColor(red: 0x75/255, green: 0xff/255, blue: 0xa3/255, alpha: 1.0)
        var basicColors = [blue, orange, pink, green]
        
        var randomNumber = [-1, 0, 1, 2, 3]
        randomNumber = shuffleArray(randomNumber)
        
        circle.backgroundColor = basicColors[randomNumber[0]]
        basicColors = shuffleArray(basicColors)
        button1.backgroundColor = basicColors[0]
        button2.backgroundColor = basicColors[1]
        button3.backgroundColor = basicColors[2]
        button4.backgroundColor = basicColors[3]
    }
    
    func updateScore() {
        score++
        self.scoreLabel.text = "score: \(score)"
    }

    
    @IBAction func b1action(sender: AnyObject) {
        if circle.backgroundColor == button1.backgroundColor {
            randomBasicColors()
            updateScore()
        }

    }
    @IBAction func b2action(sender: AnyObject) {
        if circle.backgroundColor == button2.backgroundColor {
            randomBasicColors()
            updateScore()
        }
    }
    @IBAction func b3action(sender: AnyObject) {
        if circle.backgroundColor == button3.backgroundColor {
            randomBasicColors()
            updateScore()
        }
    }
    @IBAction func b4action(sender: AnyObject) {
        if circle.backgroundColor == button4.backgroundColor {
            randomBasicColors()
            updateScore()
        }
    }



}

