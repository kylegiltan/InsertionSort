//
//  ViewController.swift
//  Insertion Gamification
//
//  Created by Kyle Gil Tan on 11/13/19.
//  Copyright © 2019 Kyle Gil Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK:- IBOUTLETS
    
    @IBOutlet weak var zero: UILabel!
    @IBOutlet weak var one: UILabel!
    @IBOutlet weak var two: UILabel!
    @IBOutlet weak var three: UILabel!
    @IBOutlet weak var four: UILabel!
    @IBOutlet weak var box0: UIImageView!
    @IBOutlet weak var box1: UIImageView!
    @IBOutlet weak var box2: UIImageView!
    @IBOutlet weak var box3: UIImageView!
    @IBOutlet weak var box4: UIImageView!
    @IBOutlet weak var gameOverLabel: UILabel!
    
    
    //MARK:- viewDidLoad
    override func viewDidLoad() {
    }
    
    //MARK:- New Game
    func newGame(first: Int, second: Int){//oneint: Int, sixint: Int){
        var i = 0
        
        UIView.animate(withDuration: 3, animations: {
            self.box1.frame.origin.y = 160
            self.one.frame.origin.y = 160
            self.box1.frame.origin.x = 190
            self.one.frame.origin.x = 190
        })

        UIView.animate(withDuration: 2, animations: {
            self.box2.frame.origin.x = 115
            self.two.frame.origin.x = 115
            self.box3.frame.origin.x = 266
            self.three.frame.origin.x = 266})
        
        while(i < 17){
            UIView.animate(withDuration: 10, animations: {
                self.box1.frame.origin.y = self.box1.frame.origin.y+20
                self.one.frame.origin.y = self.one.frame.origin.y+20})
            i += 1
        }
        
        
        
    }
    
    //MARK:- New number, don't need
    func newNumber() -> Int{
        var numRet = Int.random(in: 1..<10)
        return numRet
        
    }
    
    //MARK:- Movements
    @IBAction func moveLeftPressed(_ sender: UIButton) {
        if self.box1.frame.origin.x <= 10{}
        else{
        UIView.animate(withDuration: 0.5, animations: {
            self.box1.frame.origin.x = self.box1.frame.origin.x-20
            self.one.frame.origin.x = self.one.frame.origin.x-20
        })
        }
    }
    
    @IBAction func moveRightPressed(_ sender: UIButton) {
        if self.box1.frame.origin.x >= 370 {}
        else{
        UIView.animate(withDuration: 0.5, animations: {self.box1.frame.origin.x = self.box1.frame.origin.x+20
            self.one.frame.origin.x = self.one.frame.origin.x+20})
        }
    }
    
    //MARK:- Start
    @IBAction func startGameButtonPressed(_ sender: UIButton) {
        gameOverLabel.text = ""
        var oneint = newNumber()
        var twoint = newNumber()
        var threeint = newNumber()
        var fourint = newNumber()
        var zeroint = newNumber()
        one.text = "\(oneint)"
        two.text = "\(twoint)"
        three.text = "\(threeint)"
        four.text = "\(fourint)"
        zero.text = "\(zeroint)"
        self.box0.frame.origin.x = 40
        self.zero.frame.origin.x = 40
        self.box0.frame.origin.y = 540
        self.zero.frame.origin.y = 540
        self.box1.frame.origin.x = 115
        self.one.frame.origin.x = 115
        self.box1.frame.origin.y = 540
        self.one.frame.origin.y = 540
        self.box2.frame.origin.x = 190
        self.two.frame.origin.x = 190
        self.box2.frame.origin.y = 540
        self.two.frame.origin.y = 540
        self.box3.frame.origin.x = 265
        self.three.frame.origin.x = 265
        self.box3.frame.origin.y = 540
        self.three.frame.origin.y = 540
        self.box4.frame.origin.x = 340
        self.four.frame.origin.x = 340
        self.box4.frame.origin.y = 540
        self.four.frame.origin.y = 540
        newGame(first: oneint, second: zeroint)
    }
    
    
    //MARK:- Insert
    @IBAction func insertButtonPressed(_ sender: UIButton) {
        
        /*
         i think later on we need switch cases and then also bounds for the coordinates.
         */
        
        var first = Int(self.one.text!)!
        var zeroth = Int(self.zero.text!)!
        if first >= zeroth  { // we will say equals goes on right side
            //check if six is placed to the left of one
            if (self.box1.frame.origin.x > 20){
                UIView.animate(withDuration: 0.5, animations: {
                    self.box3.frame.origin.x = self.box3.frame.origin.x+20
                    self.three.frame.origin.x = self.three.frame.origin.x+20})

                UIView.animate(withDuration: 0.5, animations: {
                    self.box2.frame.origin.x = self.box2.frame.origin.x+49
                    self.two.frame.origin.x = self.two.frame.origin.x+49})
                
                UIView.animate(withDuration: 0.5, animations: {
                self.box1.frame.origin.y = 540
                self.one.frame.origin.y = 540
                self.box1.frame.origin.x = 95
                self.one.frame.origin.x = 95})
            }
            else{
                gameOverLabel.text = "GAME OVER!"
            }
        }
        
        else if first < zeroth  {
            //check if six is placed to the left of one
            if (self.box1.frame.origin.x < 20){
                UIView.animate(withDuration: 2, animations: {
                    self.box3.frame.origin.x = self.box3.frame.origin.x+20
                    self.three.frame.origin.x = self.three.frame.origin.x+20})
                
                UIView.animate(withDuration: 2, animations: {
                    self.box2.frame.origin.x = self.box2.frame.origin.x+49
                    self.two.frame.origin.x = self.two.frame.origin.x+49})
                
                UIView.animate(withDuration: 2, animations: {
                    self.box0.frame.origin.y = 540
                    self.zero.frame.origin.y = 540
                    self.box0.frame.origin.x = 95
                    self.zero.frame.origin.x = 95})
                
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
        
    }

    
    
    
}
