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
    
    
    
    override func viewDidLoad() {
        //super.viewDidLoad()
        
        newNumber()
        // Do any additional setup after loading the view.
        //        let timer = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false, block: { timer in
        //             UIView.animate(withDuration: 3, animations: {
        //                self.box6.frame.origin.y = self.box6.frame.origin.y+20
        //                self.six.frame.origin.y = self.six.frame.origin.y+20
        //             })
        //
        //        })
        
        newGame()
        
        
    }
    
    func newGame(){
        var i = 0
        
        UIView.animate(withDuration: 3, animations: {
            self.box1.frame.origin.y = self.box1.frame.origin.y-378
            self.one.frame.origin.y = self.one.frame.origin.y-378})
        
        UIView.animate(withDuration: 3, animations: {
            self.box1.frame.origin.x = self.box1.frame.origin.x+77
            self.one.frame.origin.x = self.one.frame.origin.x+77})
        
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
    func newNumber(){
        one.text = "\(Int.random(in: 1..<10))"
        two.text = "\(Int.random(in: 1..<10))"
        three.text = "\(Int.random(in: 1..<10))"
        four.text = "\(Int.random(in: 1..<10))"
        //five.text = "\(Int.random(in: 0..<10))"
        six.text = "\(Int.random(in: 1..<10))"
        
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
    
    @IBAction func restartGameButtonPressed(_ sender: Any) {
        newNumber()
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
        newGame()
    }
    
}
