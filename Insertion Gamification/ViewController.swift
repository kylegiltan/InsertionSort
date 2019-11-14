//
//  ViewController.swift
//  Insertion Gamification
//
//  Created by Kyle Gil Tan on 11/13/19.
//  Copyright © 2019 Kyle Gil Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { timer in
             UIView.animate(withDuration: 3, animations: {self.imageImage.frame.origin.y = self.imageImage.frame.origin.y+20})
            //here you check if you hit a certain coordinate at the bottom. if so then you go to new screen that says game over. can hit a reset button to restart
        })
    }

    //have array
    
    
    @IBAction func moveLeftPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, animations: {self.imageImage.frame.origin.x = self.imageImage.frame.origin.x-20})
    }
    
    @IBAction func moveRightPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, animations: {self.imageImage.frame.origin.x = self.imageImage.frame.origin.x+20})
    }
    

}

