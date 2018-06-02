//
//  MissingCowControllerViewController.swift
//  Project3_LearningGame
//
//  Created by Andy Duong on 30/5/18.
//  Copyright © 2018 Adam Zeaiter. All rights reserved.
//

import UIKit

class MissingCowViewController: UIViewController {
    
    @IBOutlet weak var missingWLabel: UILabel!
    @IBOutlet weak var buttonW: UIButton!
    @IBOutlet weak var buttonF: UIButton!
    @IBOutlet weak var buttonT: UIButton!
    @IBOutlet weak var buttonU: UIButton!
    @IBOutlet weak var buttonP: UIButton!
    @IBOutlet weak var buttonNext: UIButton!
    
    @IBAction func buttonWTapped(_ sender: Any) {
        missingWLabel.text = "W"
        next()
    }
    
    @IBAction func buttonFTapped(_ sender: Any) {
        buttonF.isHidden = true
    }
    
    @IBAction func buttonTTapped(_ sender: Any) {
        buttonT.isHidden = true
    }
    
    @IBAction func buttonUTapped(_ sender: Any) {
        buttonU.isHidden = true
    }
    
    @IBAction func buttonPTapped(_ sender: Any) {
        buttonP.isHidden = true
    }
    
    
    
    
    
    
    
    
    func next(){
        if(missingWLabel.text == "W"){
            buttonNext.isHidden = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonNext.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
