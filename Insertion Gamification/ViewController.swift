//
//  ViewController.swift
//  Insertion Gamification
//
//  Created by Kyle Gil Tan on 11/13/19.
//  Copyright © 2019 Kyle Gil Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var box6: UIImageView!
    
    @IBOutlet weak var one: UILabel!
    
    @IBOutlet weak var two: UILabel!
    
    @IBOutlet weak var three: UILabel!
    
    @IBOutlet weak var four: UILabel!
    
    // @IBOutlet weak var five: UILabel!
    
    @IBOutlet weak var six: UILabel!
    
    @IBOutlet weak var box1: UIImageView!
    
    @IBOutlet weak var box2: UIImageView!
    
    @IBOutlet weak var box3: UIImageView!
    
    @IBOutlet weak var box4: UIImageView!
    
    @IBOutlet weak var gameOverLabel: UILabel!
    
    
    override func viewDidLoad() {
    }
    
    func newGame(first: Int, second: Int){//oneint: Int, sixint: Int){
        var i = 0
        
        UIView.animate(withDuration: 3, animations: {
            self.box1.frame.origin.y = self.box1.frame.origin.y-378
            self.one.frame.origin.y = self.one.frame.origin.y-378
            self.box1.frame.origin.x = self.box1.frame.origin.x+77
            self.one.frame.origin.x = self.one.frame.origin.x+77
        })
        
//        UIView.animate(withDuration: 3, animations: {
//            self.box1.frame.origin.x = self.box1.frame.origin.x+77
//            self.one.frame.origin.x = self.one.frame.origin.x+77})
        
        //        UIView.animate(withDuration: 2, animations: {
        //            self.box1.frame.origin.x = self.box1.frame.origin.x-75
        //            self.one.frame.origin.x = self.one.frame.origin.x-75})
        
        UIView.animate(withDuration: 2, animations: {
            self.box3.frame.origin.x = self.box3.frame.origin.x-20
            self.three.frame.origin.x = self.three.frame.origin.x-20})
        
        UIView.animate(withDuration: 2, animations: {
            self.box2.frame.origin.x = self.box2.frame.origin.x-49
            self.two.frame.origin.x = self.two.frame.origin.x-49})
        
        
        
        while(i < 17){
            
            UIView.animate(withDuration: 10, animations: {
                self.box1.frame.origin.y = self.box1.frame.origin.y+20
                self.one.frame.origin.y = self.one.frame.origin.y+20})
            
            i += 1
        }
        
    }
    //have array
    func newNumber() -> Int{
        var numRet = Int.random(in: 1..<10)
        return numRet
        
    }
    
    
    @IBAction func moveLeftPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, animations: {self.box1.frame.origin.x = self.box1.frame.origin.x-20
            self.one.frame.origin.x = self.one.frame.origin.x-20
        })
    }
    
    @IBAction func moveRightPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, animations: {self.box1.frame.origin.x = self.box1.frame.origin.x+20
            self.one.frame.origin.x = self.one.frame.origin.x+20})
    }
    
    
    @IBAction func startGameButtonPressed(_ sender: UIButton) {
        gameOverLabel.text = ""
        var oneint = newNumber()
        var twoint = newNumber()
        var threeint = newNumber()
        var fourint = newNumber()
        var sixint = newNumber()
        one.text = "\(oneint)"
        two.text = "\(twoint)"
        three.text = "\(threeint)"
        four.text = "\(fourint)"
        //five.text = "\(Int.random(in: 0..<10))"
        six.text = "\(sixint)"
        self.box6.frame.origin.y = 541
        self.six.frame.origin.y = 541
        self.box6.frame.origin.x = 20
        self.six.frame.origin.x = 20
        self.box1.frame.origin.x = 95
        self.one.frame.origin.x = 95
        self.box1.frame.origin.y = 541
        self.one.frame.origin.y = 541
        self.box3.frame.origin.x = 247
        self.three.frame.origin.x = 247
        self.box3.frame.origin.y = 541
        self.three.frame.origin.y = 541
        self.box2.frame.origin.x = 171
        self.two.frame.origin.x = 171
        self.box2.frame.origin.y = 541
        self.two.frame.origin.y = 541
        newGame(first: oneint, second: sixint)
    }
    
    @IBAction func insertButtonPressed(_ sender: UIButton) {
        var first = Int(self.one.text!)!
        var sixth = Int(self.six.text!)!
        if first >= sixth  { // we will say equals goes on right side
            //check if six is placed to the left of one
            if (self.box1.frame.origin.x > 20){
                UIView.animate(withDuration: 2, animations: {
                    self.box3.frame.origin.x = self.box3.frame.origin.x+20
                    self.three.frame.origin.x = self.three.frame.origin.x+20})

                UIView.animate(withDuration: 2, animations: {
                    self.box2.frame.origin.x = self.box2.frame.origin.x+49
                    self.two.frame.origin.x = self.two.frame.origin.x+49})
                
                UIView.animate(withDuration: 2, animations: {
                self.box1.frame.origin.y = 540
                self.one.frame.origin.y = 540
                self.box1.frame.origin.x = 95
                self.one.frame.origin.x = 95})
            }
            else{
                gameOverLabel.text = "GAME OVER!"
            }
        }
        
        else if first < sixth  {
            //check if six is placed to the left of one
            if (self.box1.frame.origin.x < 20){
                UIView.animate(withDuration: 2, animations: {
                    self.box3.frame.origin.x = self.box3.frame.origin.x+20
                    self.three.frame.origin.x = self.three.frame.origin.x+20})
                
                UIView.animate(withDuration: 2, animations: {
                    self.box2.frame.origin.x = self.box2.frame.origin.x+49
                    self.two.frame.origin.x = self.two.frame.origin.x+49})
                
                UIView.animate(withDuration: 2, animations: {
                    self.box6.frame.origin.y = 540
                    self.six.frame.origin.y = 540
                    self.box6.frame.origin.x = 95
                    self.six.frame.origin.x = 95})
                
                UIView.animate(withDuration: 2, animations: {
                    self.box1.frame.origin.y = 540
                    self.one.frame.origin.y = 540
                    self.box1.frame.origin.x = 20
                    self.one.frame.origin.x = 20})
                
            }
            else{
                gameOverLabel.text = "GAME OVER!"
            }
            
        }
        
        print(first)
        print(sixth)
    }
}
