//
//  HomeScreenViewController.swift
//  Insertion Gamification
//
//  Created by Kyle Gil Tan on 11/21/19.
//  Copyright © 2019 Kyle Gil Tan. All rights reserved.
//

import UIKit

class HomeScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK:- Home Screen
    
    @IBAction func clickToStartButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "Start", sender: nil)
    }
    
}
