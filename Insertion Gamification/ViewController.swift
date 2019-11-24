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
    @IBOutlet weak var redLine: UIImageView!

    var boxToMove: UIImageView
    var textToMove: UILabel
    
    
    //MARK:- viewDidLoad
    override func viewDidLoad() {
        redLine.isHidden = true
    }
    
    //MARK:- New number, don't need
    func newNumber() -> Int{
        var numRet = Int.random(in: 1..<10)
        return numRet
        
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
        newGame()
        //newGame(first: zeroint, second: oneint)
    }
    
    //MARK:- Movements
    @IBAction func moveLeftPressed(_ sender: UIButton) {
        if (self.boxToMove.frame.origin.x > 0 && self.boxToMove.frame.origin.x < 50){
            self.redLine.frame.origin.x = 10}
            
        else if (self.boxToMove.frame.origin.x > 50 && self.boxToMove.frame.origin.x < 143){
            self.redLine.frame.origin.x = 97
        }
            
        else if (self.boxToMove.frame.origin.x > 143 && self.boxToMove.frame.origin.x < 237){
            self.redLine.frame.origin.x = 190
        }
            
        else if (self.boxToMove.frame.origin.x > 237 && self.boxToMove.frame.origin.x < 330){
            self.redLine.frame.origin.x = 283
        }
            
        else if (self.boxToMove.frame.origin.x > 330){
            self.redLine.frame.origin.x = 370
        }
        
        if self.boxToMove.frame.origin.x <= 10{}
        else{
            UIView.animate(withDuration: 0.5, animations: {
                self.boxToMove.frame.origin.x = self.boxToMove.frame.origin.x-20
                self.textToMove.frame.origin.x = self.textToMove.frame.origin.x-20})
        }
    }
    
    @IBAction func moveRightPressed(_ sender: UIButton) {
        if (self.boxToMove.frame.origin.x > 0 && self.boxToMove.frame.origin.x < 50){
            self.redLine.frame.origin.x = 10}
            
        else if (self.boxToMove.frame.origin.x > 50 && self.boxToMove.frame.origin.x < 143){
            self.redLine.frame.origin.x = 97
        }
            
        else if (self.boxToMove.frame.origin.x > 143 && self.boxToMove.frame.origin.x < 237){
            self.redLine.frame.origin.x = 190
        }
            
        else if (self.boxToMove.frame.origin.x > 237 && self.boxToMove.frame.origin.x < 330){
            self.redLine.frame.origin.x = 283
        }
            
        else if (self.boxToMove.frame.origin.x > 330){
            self.redLine.frame.origin.x = 370
        }
        
        if self.boxToMove.frame.origin.x >= 370 {}
        else{
            UIView.animate(withDuration: 0.5, animations: {self.boxToMove.frame.origin.x = self.boxToMove.frame.origin.x+20
                self.textToMove.frame.origin.x = self.textToMove.frame.origin.x+20})
        }
    }
    

    
    //MARK:- Insert
    @IBAction func insertButtonPressed(_ sender: UIButton) {
        //if checkfirst == false
        firstInsert()
    }
    
    //MARK:- FIRST
    func newGame(){//first: Int, second: Int){
        boxToMove = self.box1
        textToMove = self.one
        var i = 0
        
        UIView.animate(withDuration: 3, animations: {
            self.box1.frame.origin.y = 160
            self.one.frame.origin.y = 160
            self.box1.frame.origin.x = 190
            self.one.frame.origin.x = 190
        })
        
        UIView.animate(withDuration: 2, animations: {
            self.box0.frame.origin.x = 50
            self.zero.frame.origin.x = 50
            self.box2.frame.origin.x = 143
            self.two.frame.origin.x = 143
            self.box3.frame.origin.x = 237
            self.three.frame.origin.x = 237
            self.box4.frame.origin.x = 330
            self.four.frame.origin.x = 330
        })
        
        UIView.animate(withDuration: 0.1) {
            self.redLine.frame.origin.x = 190
            self.redLine.isHidden = false
        }
        
        while(i < 17){
            UIView.animate(withDuration: 20, animations: {
                self.box1.frame.origin.y = self.box1.frame.origin.y+20
                self.one.frame.origin.y = self.one.frame.origin.y+20})
            i += 1
        }
        
    }
    
    func firstInsert(){
        var zeroth = Int(self.zero.text!)!
        var first = Int(self.one.text!)!
        
        if first >= zeroth  { // we will say equals goes on right side
            //check if one is placed to the right of zero
            
            if (self.box1.frame.origin.x > 20){
                
                self.redLine.isHidden = true
                
                UIView.animate(withDuration: 2, animations: {
                    self.box0.frame.origin.x = 40
                    self.zero.frame.origin.x = 40
                    self.box1.frame.origin.x = 115
                    self.one.frame.origin.x = 115
                    self.box1.frame.origin.y = 540
                    self.one.frame.origin.y = 540
                    self.box2.frame.origin.x = 190
                    self.two.frame.origin.x = 190
                    self.box3.frame.origin.x = 265
                    self.three.frame.origin.x = 265
                    self.box4.frame.origin.x = 340
                    self.four.frame.origin.x = 340})
                
                    secondNewGame()//second: <#T##Int#>, third: <#T##Int#>)
                
            }
            else{
                gameOverLabel.text = "GAME OVER!"
            }
        }
            
        else if first < zeroth  {
            //check if one is placed to the left of zero
            if (self.box1.frame.origin.x < 20){
                
                self.redLine.isHidden = true
                
                UIView.animate(withDuration: 2, animations: {
                    self.box0.frame.origin.x = 115
                    self.zero.frame.origin.x = 115
                    self.box1.frame.origin.x = 40
                    self.one.frame.origin.x = 40
                    self.box1.frame.origin.y = 540
                    self.one.frame.origin.y = 540
                    self.box2.frame.origin.x = 190
                    self.two.frame.origin.x = 190
                    self.box3.frame.origin.x = 265
                    self.three.frame.origin.x = 265
                    self.box4.frame.origin.x = 340
                    self.four.frame.origin.x = 340
                })
                var boxtemp = box0
                var temp = zero
                self.box0 = self.box1
                self.zero = self.one
                self.box1 = boxtemp
                self.one = temp
                secondNewGame()
            }
            else{
                gameOverLabel.text = "GAME OVER!"
            }
            
        }
    }
    
    //MARK:- second
    func secondNewGame(){//second: Int, third: Int){
        boxToMove = self.box2
        textToMove = self.two
        var i = 0
        
        UIView.animate(withDuration: 3, animations: {
            self.box2.frame.origin.y = 160
            self.two.frame.origin.y = 160
            self.box2.frame.origin.x = 190
            self.two.frame.origin.x = 190
        })
        
        UIView.animate(withDuration: 2, animations: {
            self.box0.frame.origin.x = 50
            self.zero.frame.origin.x = 50
            self.box1.frame.origin.x = 143
            self.one.frame.origin.x = 143
            self.box3.frame.origin.x = 237
            self.three.frame.origin.x = 237
            self.box4.frame.origin.x = 330
            self.four.frame.origin.x = 330
        })
        
        UIView.animate(withDuration: 0.1) {
            self.redLine.frame.origin.x = 190
            self.redLine.isHidden = false
        }
        
        while(i < 17){
            UIView.animate(withDuration: 20, animations: {
                self.box2.frame.origin.y = self.box2.frame.origin.y+20
                self.two.frame.origin.y = self.two.frame.origin.y+20})
            i += 1
        }
        
    }
    
    func secondInsert(){
        var first = Int(self.one.text!)!
        var second = Int(self.two.text!)!
        
        if second >= first  { // we will say equals goes on right side
            //check if zero is placed to the left of one
            
            if (self.box2.frame.origin.x > 20){
                
                self.redLine.isHidden = true
                
                UIView.animate(withDuration: 2, animations: {
                    self.box0.frame.origin.x = 40
                    self.zero.frame.origin.x = 40
                    self.box1.frame.origin.x = 115
                    self.one.frame.origin.x = 115
                    self.box1.frame.origin.y = 540
                    self.one.frame.origin.y = 540
                    self.box2.frame.origin.x = 190
                    self.two.frame.origin.x = 190
                    self.box3.frame.origin.x = 265
                    self.three.frame.origin.x = 265
                    self.box4.frame.origin.x = 340
                    self.four.frame.origin.x = 340})
                
                
            }
            else{
                gameOverLabel.text = "GAME OVER!"
            }
        }
            
        else if second < first  {
            //check if zero is placed to the right of one
            if (self.box2.frame.origin.x < 20){
                
                self.redLine.isHidden = true
                
                UIView.animate(withDuration: 2, animations: {
                    self.box0.frame.origin.x = 115
                    self.zero.frame.origin.x = 115
                    self.box1.frame.origin.x = 40
                    self.one.frame.origin.x = 40
                    self.box1.frame.origin.y = 540
                    self.one.frame.origin.y = 540
                    self.box2.frame.origin.x = 190
                    self.two.frame.origin.x = 190
                    self.box3.frame.origin.x = 265
                    self.three.frame.origin.x = 265
                    self.box4.frame.origin.x = 340
                    self.four.frame.origin.x = 340
                })
                
            }
            else{
                gameOverLabel.text = "GAME OVER!"
            }
            
        }
    }
    
    
    
}
