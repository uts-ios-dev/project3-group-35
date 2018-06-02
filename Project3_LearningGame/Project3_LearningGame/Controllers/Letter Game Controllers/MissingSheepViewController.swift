//
//  MissingSheepController.swift
//  Project3_LearningGame
//
//  Created by Andy Duong on 30/5/18.
//  Copyright © 2018 Adam Zeaiter. All rights reserved.
//

import UIKit

class MissingSheepViewController: UIViewController {
    
    
    @IBOutlet weak var missingELabel1: UILabel!
    @IBOutlet weak var missingELabel2: UILabel!
    @IBOutlet weak var buttonE: UIButton!
    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonV: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    @IBOutlet weak var buttonNext: UIButton!
    
    
    @IBAction func buttonETapped(_ sender: Any) {
        missingELabel1.text = "E"
        missingELabel2.text = "E"
        next()
    }
    
    @IBAction func buttonATapped(_ sender: Any) {
        buttonA.isHidden = true
    }
    
    @IBAction func buttonVTapped(_ sender: Any) {
        buttonV.isHidden = true
    }
    
    @IBAction func buttonBTapped(_ sender: Any) {
        buttonB.isHidden = true
    }
    
    @IBAction func ButtonDTapped(_ sender: Any) {
        buttonD.isHidden = true
    }
    
    func next(){
        if(missingELabel1.text == "E") && (missingELabel2.text == "E"){
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
