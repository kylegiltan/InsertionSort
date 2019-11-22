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
            self.box1.frame.origin.y = self.box1.frame.origin.y-378
            self.one.frame.origin.y = self.one.frame.origin.y-378
            self.box1.frame.origin.x = self.box1.frame.origin.x+77
            self.one.frame.origin.x = self.one.frame.origin.x+77
        })
        

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
    
    //MARK:- New number, don't need
    func newNumber() -> Int{
        var numRet = Int.random(in: 1..<10)
        return numRet
        
    }
    
    //MARK:- Movements
    @IBAction func moveLeftPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, animations: {self.box1.frame.origin.x = self.box1.frame.origin.x-20
            self.one.frame.origin.x = self.one.frame.origin.x-20
        })
    }
    
    @IBAction func moveRightPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, animations: {self.box1.frame.origin.x = self.box1.frame.origin.x+20
            self.one.frame.origin.x = self.one.frame.origin.x+20})
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
        self.box0.frame.origin.y = 541
        self.zero.frame.origin.y = 541
        self.box0.frame.origin.x = 20
        self.zero.frame.origin.x = 20
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
        newGame(first: oneint, second: zeroint)
    }
    
    
    //MARK:- ViewController
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
