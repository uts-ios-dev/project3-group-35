//
//  MissingChickenController.swift
//  Project3_LearningGame
//
//  Created by Andy Duong on 29/5/18.
//  Copyright © 2018 Adam Zeaiter. All rights reserved.
//

import UIKit

class MissingChickenViewController: UIViewController {
    
    
    @IBOutlet weak var buttonNext: UIButton!
    @IBOutlet weak var missingHLabel: UILabel!
    @IBOutlet weak var missingELabel: UILabel!
    @IBOutlet weak var buttonO: UIButton!
    @IBOutlet weak var buttonF: UIButton!
    @IBOutlet weak var buttonE: UIButton!
    @IBOutlet weak var buttonH: UIButton!
    @IBOutlet weak var buttonT: UIButton!
    
    @IBAction func buttonTTapped(_ sender: Any) {
        buttonT.isHidden = true
    }
    @IBAction func buttonOTapped(_ sender: Any) {
        buttonO.isHidden = true
    }
    
    @IBAction func buttonFTapped(_ sender: Any) {
        buttonF.isHidden = true
    }
    
    @IBAction func ButtonHTapped(_ sender: Any) {
        missingHLabel.text = "H"
        next()
    }
    
    
    @IBAction func buttonETapped(_ sender: Any) {
        missingELabel.text = "E"
        next()
    }
    
    
    func next(){
        if(missingELabel.text == "E" ) && (missingHLabel.text == "H"){
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
