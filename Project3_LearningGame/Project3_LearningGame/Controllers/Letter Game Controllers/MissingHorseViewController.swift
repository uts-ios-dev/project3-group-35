//
//  MissingHorseController.swift
//  Project3_LearningGame
//
//  Created by Andy Duong on 30/5/18.
//  Copyright © 2018 Adam Zeaiter. All rights reserved.
//

import UIKit

class MissingHorseViewController: UIViewController {
    
    
    @IBOutlet weak var missingRLabel: UILabel!
    @IBOutlet weak var buttonR: UIButton!
    @IBOutlet weak var buttonI: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonM: UIButton!
    @IBOutlet weak var buttonP: UIButton!
    @IBOutlet weak var buttonNext: UIButton!
    
    
    @IBAction func buttonRTapped(_ sender: Any) {
        missingRLabel.text = "R"
        next()
    }
    
    @IBAction func buttonITapped(_ sender: Any) {
        buttonI.isHidden = true
    }
    
    @IBAction func buttonCTapped(_ sender: Any) {
        buttonC.isHidden = true
    }
    
    @IBAction func buttonMTapped(_ sender: Any) {
        buttonM.isHidden = true
    }
    
    @IBAction func buttonPTapped(_ sender: Any) {
        buttonP.isHidden = true
    }
    
    func next(){
        if(missingRLabel.text == "R"){
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
