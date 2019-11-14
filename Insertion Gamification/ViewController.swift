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
    }

    //have array
    
    
    @IBAction func moveLeftPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, animations: {self.imageImage.frame.origin.x = self.imageImage.frame.origin.x-20})
    }
    
    @IBAction func moveRightPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, animations: {self.imageImage.frame.origin.x = self.imageImage.frame.origin.x+20})
    }
    

}

