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
    @IBOutlet weak var newGameButton: UIButton!
    

    var boxToMove:UIImageView? = nil
    var textToMove: UILabel? = nil
//    var OGbox0:UIImageView? = nil
//    var OGzero: UILabel? = nil
//    var OGbox1:UIImageView? = nil
//    var OGone: UILabel? = nil
//    var OGbox2:UIImageView? = nil
//    var OGtwo: UILabel? = nil
//    var OGbox3:UIImageView? = nil
//    var OGthree: UILabel? = nil
//    var OGbox4:UIImageView? = nil
//    var OGfour: UILabel? = nil
    var checkedFirst = false
    var checkedSecond = false
    var checkedThird = false
    var checkedFourth = false
    
    
    
    
    //MARK:- viewDidLoad
    override func viewDidLoad() {
        redLine.isHidden = true
        boxToMove = box1
        textToMove = one
    }
    
    //MARK:- New number, don't need
    func newNumber() -> Int{
        var numRet = Int.random(in: 1..<10)
        return numRet
        
    }
    

    //MARK:- Start
    @IBAction func startGameButtonPressed(_ sender: UIButton) {
        newGameButton.isHidden = true
        self.boxToMove = box1
        self.textToMove = one
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
        checkedFirst = false
        checkedSecond = false
        checkedThird = false
        checkedFourth = false
        newGame()
    }
    
    //MARK:- Movements
    @IBAction func moveLeftPressed(_ sender: UIButton) {
        if (self.boxToMove!.frame.origin.x > 0 && self.boxToMove!.frame.origin.x < 50){
            self.redLine.frame.origin.x = 10}

        else if (self.boxToMove!.frame.origin.x > 50 && self.boxToMove!.frame.origin.x < 143){
            self.redLine.frame.origin.x = 97
        }

        else if (self.boxToMove!.frame.origin.x > 143 && self.boxToMove!.frame.origin.x < 237){
            self.redLine.frame.origin.x = 190
        }

        else if (self.boxToMove!.frame.origin.x > 237 && self.boxToMove!.frame.origin.x < 330){
            self.redLine.frame.origin.x = 283
        }

        else if (self.boxToMove!.frame.origin.x > 330){
            self.redLine.frame.origin.x = 370
        }

        if self.boxToMove!.frame.origin.x <= 10{}
        else{
            UIView.animate(withDuration: 0.5, animations: {
                self.boxToMove!.frame.origin.x = self.boxToMove!.frame.origin.x-20
                self.textToMove!.frame.origin.x = self.textToMove!.frame.origin.x-20})
        }
    }
    
    @IBAction func moveRightPressed(_ sender: UIButton) {
        if (self.boxToMove!.frame.origin.x > 0 && self.boxToMove!.frame.origin.x < 50){
            self.redLine.frame.origin.x = 10}

        else if (self.boxToMove!.frame.origin.x > 50 && self.boxToMove!.frame.origin.x < 143){
            self.redLine.frame.origin.x = 97
        }

        else if (self.boxToMove!.frame.origin.x > 143 && self.boxToMove!.frame.origin.x < 237){
            self.redLine.frame.origin.x = 190
        }

        else if (self.boxToMove!.frame.origin.x > 237 && self.boxToMove!.frame.origin.x < 330){
            self.redLine.frame.origin.x = 283
        }

        else if (self.boxToMove!.frame.origin.x > 330){
            self.redLine.frame.origin.x = 370
        }

        if self.boxToMove!.frame.origin.x >= 370 {}
        else{
            UIView.animate(withDuration: 0.5, animations: {self.boxToMove!.frame.origin.x = self.boxToMove!.frame.origin.x+20
                self.textToMove!.frame.origin.x = self.textToMove!.frame.origin.x+20})
        }
    }
    

    
    //MARK:- Insert
    @IBAction func insertButtonPressed(_ sender: UIButton) {
        if self.checkedFirst == false{
            self.checkedFirst = true
            firstInsert()
        }
        else if self.checkedSecond == false{
            self.checkedSecond = true
            secondInsert()
        }
        else if self.checkedThird == false{
            self.checkedThird = true
            thirdInsert()
        }
        else if self.checkedFourth == false{
            self.checkedFourth = true
            fourthInsert()
        }
    }
    
    //MARK:- FIRST
    func newGame(){

        UIView.animate(withDuration: 3, animations: {
            self.box1.frame.origin.y = 160
            self.one.frame.origin.y = 160
            self.box1.frame.origin.x = 190
            self.one.frame.origin.x = 190
            self.redLine.frame.origin.x = 190
            self.redLine.isHidden = false
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

        UIView.animate(withDuration: 20, animations: {
            self.box1.frame.origin.y = 500
            self.one.frame.origin.y = 500},
            completion: {finished in
                if self.checkedFirst {}
                else{self.firstInsert()
                    self.checkedFirst = true}
                        }
        )
        
    }
    
    func firstInsert(){
        var zeroth = Int(self.zero.text!)!
        var first = Int(self.one.text!)!
        
        if first >= zeroth  { // we will say equals goes on right side
            //check if one is placed to the right of zero
            
            if ((self.box1.frame.origin.x >= 50) && (self.box1.frame.origin.x <= 143)){
                
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
                    self.checkedFirst = true
                    secondNewGame()
                
            }
            else{
                gameOverLabel.text = "GAME OVER!"
            }
        }
            
        else if first < zeroth  {
            //check if one is placed to the left of zero
            if (self.box1.frame.origin.x <= 50){
                
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
                self.checkedFirst = true
                secondNewGame()
            }
            else{
                gameOverLabel.text = "GAME OVER!"
            }
            
        }
    }
    
    //MARK:- second
    func secondNewGame(){
        boxToMove = self.box2
        textToMove = self.two

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
        
        UIView.animate(withDuration: 20, animations: {
            self.box2.frame.origin.y = 500
            self.two.frame.origin.y = 500},
                       completion: {finished in
                        if self.checkedSecond {}
                        else{
                        self.secondInsert()
                            self.checkedSecond = true}
        }
        )
        
    }
    
    func secondInsert(){
        var zeroth = Int(self.zero.text!)!
        var first = Int(self.one.text!)!
        var second = Int(self.two.text!)!
        
        if second >= first  { // we will say equals goes on right side
            //check if two is placed to the right of one
            
            if (self.box2.frame.origin.x >= 143){
                
                self.redLine.isHidden = true
                
                UIView.animate(withDuration: 2, animations: {
                    self.box0.frame.origin.x = 40
                    self.zero.frame.origin.x = 40
                    self.box1.frame.origin.x = 115
                    self.one.frame.origin.x = 115
                    self.box2.frame.origin.x = 190
                    self.two.frame.origin.x = 190
                    self.box2.frame.origin.y = 540
                    self.two.frame.origin.y = 540
                    self.box3.frame.origin.x = 265
                    self.three.frame.origin.x = 265
                    self.box4.frame.origin.x = 340
                    self.four.frame.origin.x = 340})
                    thirdNewGame()
                
            }
            else{
                gameOverLabel.text = "GAME OVER!"
            }
        }
            
        else if ((second < first) && (second >= zeroth))  {
            //check if two is placed in between 0 and 1
            if ((self.box2.frame.origin.x <= 143) && (self.box2.frame.origin.x >= 50)){
                
                self.redLine.isHidden = true
                
                UIView.animate(withDuration: 2, animations: {
                    self.box0.frame.origin.x = 40
                    self.zero.frame.origin.x = 40
                    self.box1.frame.origin.x = 190
                    self.one.frame.origin.x = 190
                    self.box2.frame.origin.x = 115
                    self.two.frame.origin.x = 115
                    self.box2.frame.origin.y = 540
                    self.two.frame.origin.y = 540
                    self.box3.frame.origin.x = 265
                    self.three.frame.origin.x = 265
                    self.box4.frame.origin.x = 340
                    self.four.frame.origin.x = 340
                })
                var boxtemp = box1
                var temp = one
                self.box1 = self.box2
                self.one = self.two
                self.box1 = boxtemp
                self.two = temp
                self.checkedSecond = true
                thirdNewGame()
            }
            else{
                gameOverLabel.text = "GAME OVER!"
            }
        }
            
        else if (second < zeroth)  {
            //check if two is on the left
            if (self.box2.frame.origin.x <= 50){
                
                self.redLine.isHidden = true
                
                UIView.animate(withDuration: 2, animations: {
                    self.box0.frame.origin.x = 115
                    self.zero.frame.origin.x = 115
                    self.box1.frame.origin.x = 190
                    self.one.frame.origin.x = 190
                    self.box2.frame.origin.x = 40
                    self.two.frame.origin.x = 40
                    self.box2.frame.origin.y = 540
                    self.two.frame.origin.y = 540
                    self.box3.frame.origin.x = 265
                    self.three.frame.origin.x = 265
                    self.box4.frame.origin.x = 340
                    self.four.frame.origin.x = 340
                })
                var boxtemp0 = box0
                var temp0 = zero
                var boxtemp1 = box1
                var temp1 = one
                self.box0 = self.box2
                self.zero = self.two
                self.box1 = boxtemp0
                self.one = temp0
                self.box2 = boxtemp1
                self.two = temp1
                self.checkedSecond = true
                thirdNewGame()
            }
            else{
                gameOverLabel.text = "GAME OVER!"
            }
        }
    }
    
    //MARK:- third
    func thirdNewGame(){
        boxToMove = self.box3
        textToMove = self.three
        
        UIView.animate(withDuration: 3, animations: {
            self.box3.frame.origin.y = 160
            self.three.frame.origin.y = 160
            self.box3.frame.origin.x = 190
            self.three.frame.origin.x = 190
        })
        
        UIView.animate(withDuration: 2, animations: {
            self.box0.frame.origin.x = 50
            self.zero.frame.origin.x = 50
            self.box1.frame.origin.x = 143
            self.one.frame.origin.x = 143
            self.box2.frame.origin.x = 237
            self.two.frame.origin.x = 237
            self.box4.frame.origin.x = 330
            self.four.frame.origin.x = 330
        })
        
        UIView.animate(withDuration: 0.1) {
            self.redLine.frame.origin.x = 190
            self.redLine.isHidden = false
        }
        
        UIView.animate(withDuration: 20, animations: {
            self.box3.frame.origin.y = 500
            self.three.frame.origin.y = 500},
                       completion: {finished in
                        if self.checkedThird {}
                        else{
                        self.thirdInsert()
                            self.checkedThird = true}
        }
        )
    }
    
    func thirdInsert(){
        var zeroth = Int(self.zero.text!)!
        var first = Int(self.one.text!)!
        var second = Int(self.two.text!)!
        var third = Int(self.three.text!)!
        
        if third >= second  { // we will say equals goes on right side
            //check if three is placed to the right of two
            
            if (self.box3.frame.origin.x >= 237){
                
                self.redLine.isHidden = true
                
                UIView.animate(withDuration: 2, animations: {
                    self.box0.frame.origin.x = 40
                    self.zero.frame.origin.x = 40
                    self.box1.frame.origin.x = 115
                    self.one.frame.origin.x = 115
                    self.box2.frame.origin.x = 190
                    self.two.frame.origin.x = 190
                    self.box3.frame.origin.y = 540
                    self.three.frame.origin.y = 540
                    self.box3.frame.origin.x = 265
                    self.three.frame.origin.x = 265
                    self.box4.frame.origin.x = 340
                    self.four.frame.origin.x = 340})
                    fourthNewGame()
                
            }
            else{
                gameOverLabel.text = "GAME OVER!"
            }
        }
            
        else if ((third < second) && (third >= first))  {
            //check if three is placed in between 1 and 2
            if ((self.box3.frame.origin.x <= 237) && (self.box3.frame.origin.x >= 143)){
                
                self.redLine.isHidden = true
                
                UIView.animate(withDuration: 2, animations: {
                    self.box0.frame.origin.x = 40
                    self.zero.frame.origin.x = 40
                    self.box1.frame.origin.x = 115
                    self.one.frame.origin.x = 115
                    self.box2.frame.origin.x = 265
                    self.two.frame.origin.x = 265
                    self.box3.frame.origin.x = 190
                    self.three.frame.origin.x = 190
                    self.box3.frame.origin.y = 540
                    self.three.frame.origin.y = 540
                    self.box4.frame.origin.x = 340
                    self.four.frame.origin.x = 340
                })
                var boxtemp = box2
                var temp = two
                self.box2 = self.box3
                self.two = self.three
                self.box3 = boxtemp
                self.three = temp
                self.checkedThird = true
                fourthNewGame()
            }
            else{
                gameOverLabel.text = "GAME OVER!"
            }
        }
            
        else if ((third < first) && (third >= zeroth))  {
            //check if three is placed in between 0 and 1
            if ((self.box3.frame.origin.x <= 143) && (self.box3.frame.origin.x >= 50)){
                
                self.redLine.isHidden = true
                
                UIView.animate(withDuration: 2, animations: {
                    self.box0.frame.origin.x = 40
                    self.zero.frame.origin.x = 40
                    self.box1.frame.origin.x = 190
                    self.one.frame.origin.x = 190
                    self.box2.frame.origin.x = 265
                    self.two.frame.origin.x = 265
                    self.box3.frame.origin.x = 115
                    self.three.frame.origin.x = 115
                    self.box3.frame.origin.y = 540
                    self.three.frame.origin.y = 540
                    self.box4.frame.origin.x = 340
                    self.four.frame.origin.x = 340
                })
                var boxtemp1 = box1
                var temp1 = one
                var boxtemp2 = box2
                var temp2 = two
                self.box1 = boxtemp2
                self.one = temp2
                self.box2 = self.box3
                self.two = self.three
                self.box3 = boxtemp1
                self.three = temp1
                self.checkedThird = true
                fourthNewGame()
            }
            else{
                gameOverLabel.text = "GAME OVER!"
            }
        }
            
        else if (third < zeroth)  {
            //check if three is on the left
            if (self.box3.frame.origin.x <= 50){
                
                self.redLine.isHidden = true
                
                UIView.animate(withDuration: 2, animations: {
                    self.box0.frame.origin.x = 115
                    self.zero.frame.origin.x = 115
                    self.box1.frame.origin.x = 190
                    self.one.frame.origin.x = 190
                    self.box2.frame.origin.x = 265
                    self.two.frame.origin.x = 265
                    self.box3.frame.origin.y = 540
                    self.three.frame.origin.y = 540
                    self.box3.frame.origin.x = 40
                    self.three.frame.origin.x = 40
                    self.box4.frame.origin.x = 340
                    self.four.frame.origin.x = 340
                })
                var boxtemp0 = box0
                var temp0 = zero
                var boxtemp1 = box1
                var temp1 = one
                var boxtemp2 = box2
                var temp2 = two
                self.box0 = self.box3
                self.zero = self.three
                self.box1 = boxtemp0
                self.one = temp0
                self.box2 = boxtemp1
                self.two = temp1
                self.box3 = boxtemp2
                self.three = temp2
                self.checkedThird = true
                fourthNewGame()
            }
            else{
                gameOverLabel.text = "GAME OVER!"
            }
        }
    }
    
    //MARK:- fourth
    
    func fourthNewGame(){
        boxToMove = self.box4
        textToMove = self.four
        
        UIView.animate(withDuration: 3, animations: {
            self.box4.frame.origin.y = 160
            self.four.frame.origin.y = 160
            self.box4.frame.origin.x = 190
            self.four.frame.origin.x = 190
        })
        
        UIView.animate(withDuration: 2, animations: {
            self.box0.frame.origin.x = 50
            self.zero.frame.origin.x = 50
            self.box1.frame.origin.x = 143
            self.one.frame.origin.x = 143
            self.box2.frame.origin.x = 237
            self.two.frame.origin.x = 237
            self.box3.frame.origin.x = 330
            self.three.frame.origin.x = 330
        })
        
        UIView.animate(withDuration: 0.1) {
            self.redLine.frame.origin.x = 190
            self.redLine.isHidden = false
        }
        
        UIView.animate(withDuration: 20, animations: {
            self.box4.frame.origin.y = 500
            self.four.frame.origin.y = 500},
                       completion: {finished in
                        if self.checkedFourth {}
                        else{
                        self.fourthInsert()
                            self.checkedFourth = true}
        }
        )
    }
    
    func fourthInsert(){
        var zeroth = Int(self.zero.text!)!
        var first = Int(self.one.text!)!
        var second = Int(self.two.text!)!
        var third = Int(self.three.text!)!
        var fourth = Int(self.four.text!)!
        
        if fourth >= third  { // we will say equals goes on right side
            //check if four is placed to the right of three
            
            if (self.box4.frame.origin.x >= 330){
                
                self.redLine.isHidden = true
                
                UIView.animate(withDuration: 2, animations: {
                    self.box0.frame.origin.x = 40
                    self.zero.frame.origin.x = 40
                    self.box1.frame.origin.x = 115
                    self.one.frame.origin.x = 115
                    self.box2.frame.origin.x = 190
                    self.two.frame.origin.x = 190
                    self.box3.frame.origin.x = 265
                    self.three.frame.origin.x = 265
                    self.box4.frame.origin.x = 340
                    self.four.frame.origin.x = 340
                    self.box4.frame.origin.y = 540
                    self.four.frame.origin.y = 540
                })
                winnerWinnerChickenDinner()
                
            }
            else{
                gameOverLabel.text = "GAME OVER!"
            }
        }
            
        else if ((fourth < third) && (fourth >= second))  {
            //check if four is placed in between 2 and 3
            if ((self.box4.frame.origin.x <= 330) && (self.box4.frame.origin.x >= 237)){
                
                self.redLine.isHidden = true
                
                UIView.animate(withDuration: 2, animations: {
                    self.box0.frame.origin.x = 40
                    self.zero.frame.origin.x = 40
                    self.box1.frame.origin.x = 115
                    self.one.frame.origin.x = 115
                    self.box2.frame.origin.x = 190
                    self.two.frame.origin.x = 190
                    self.box3.frame.origin.x = 340
                    self.three.frame.origin.x = 340
                    self.box4.frame.origin.y = 540
                    self.four.frame.origin.y = 540
                    self.box4.frame.origin.x = 265
                    self.four.frame.origin.x = 265
                })
                var boxtemp = box3
                var temp = three
                self.box3 = self.box4
                self.three = self.four
                self.box4 = boxtemp
                self.four = temp
                self.checkedFourth = true
                winnerWinnerChickenDinner()
            }
            else{
                gameOverLabel.text = "GAME OVER!"
            }
        }
            
        else if ((fourth < second) && (fourth >= first))  {
            //check if four is placed in between 1 and 2
            if ((self.box4.frame.origin.x <= 237) && (self.box4.frame.origin.x >= 143)){
                
                self.redLine.isHidden = true
                
                UIView.animate(withDuration: 2, animations: {
                    self.box0.frame.origin.x = 40
                    self.zero.frame.origin.x = 40
                    self.box1.frame.origin.x = 115
                    self.one.frame.origin.x = 115
                    self.box2.frame.origin.x = 265
                    self.two.frame.origin.x = 265
                    self.box3.frame.origin.x = 340
                    self.three.frame.origin.x = 340
                    self.box4.frame.origin.y = 540
                    self.four.frame.origin.y = 540
                    self.box4.frame.origin.x = 190
                    self.four.frame.origin.x = 190
                })
                var boxtemp3 = box3
                var temp3 = three
                var boxtemp2 = box2
                var temp2 = two
                self.box2 = boxtemp3
                self.two = temp3
                self.box3 = self.box4
                self.three = self.four
                self.box4 = boxtemp2
                self.four = temp2
                self.checkedFourth = true
                winnerWinnerChickenDinner()
            }
            else{
                gameOverLabel.text = "GAME OVER!"
            }
        }
        
        else if ((fourth < first) && (fourth >= zeroth))  {
            //check if four is placed in between 0 and 1
            if ((self.box4.frame.origin.x <= 143) && (self.box4.frame.origin.x >= 50)){
                
                self.redLine.isHidden = true
                
                UIView.animate(withDuration: 2, animations: {
                    self.box0.frame.origin.x = 40
                    self.zero.frame.origin.x = 40
                    self.box1.frame.origin.x = 190
                    self.one.frame.origin.x = 190
                    self.box2.frame.origin.x = 265
                    self.two.frame.origin.x = 265
                    self.box3.frame.origin.x = 340
                    self.three.frame.origin.x = 340
                    self.box4.frame.origin.y = 540
                    self.four.frame.origin.y = 540
                    self.box4.frame.origin.x = 115
                    self.four.frame.origin.x = 115
                })
                var boxtemp3 = box3
                var temp3 = three
                var boxtemp2 = box2
                var temp2 = two
                var boxtemp1 = box1
                var temp1 = one
                self.box1 = boxtemp1
                self.one = temp1
                self.box2 = boxtemp3
                self.two = temp3
                self.box3 = self.box4
                self.three = self.four
                self.box4 = boxtemp1
                self.four = temp1
                self.checkedFourth = true
                winnerWinnerChickenDinner()
            }
            else{
                gameOverLabel.text = "GAME OVER!"
            }
        }
            
        else if (fourth < zeroth)  {
            //check if four is on the left
            if (self.box4.frame.origin.x <= 50){
                
                self.redLine.isHidden = true
                
                UIView.animate(withDuration: 2, animations: {
                    self.box0.frame.origin.x = 115
                    self.zero.frame.origin.x = 115
                    self.box1.frame.origin.x = 190
                    self.one.frame.origin.x = 190
                    self.box2.frame.origin.x = 265
                    self.two.frame.origin.x = 265
                    self.box4.frame.origin.y = 540
                    self.four.frame.origin.y = 540
                    self.box3.frame.origin.x = 340
                    self.three.frame.origin.x = 340
                    self.box4.frame.origin.x = 40
                    self.four.frame.origin.x = 40
                })
                var boxtemp0 = box0
                var temp0 = zero
                var boxtemp1 = box1
                var temp1 = one
                var boxtemp2 = box2
                var temp2 = two
                var boxtemp3 = box3
                var temp3 = three
                self.box0 = self.box4
                self.zero = self.four
                self.box1 = boxtemp0
                self.one = temp0
                self.box2 = boxtemp1
                self.two = temp1
                self.box3 = boxtemp2
                self.three = temp2
                self.box4 = boxtemp3
                self.four = temp3
                self.checkedFourth = true
                winnerWinnerChickenDinner()
            }
            else{
                gameOverLabel.text = "GAME OVER!"
            }
        }
    }
    
    func winnerWinnerChickenDinner(){
        gameOverLabel.text = "WINNER!"
    }
}
