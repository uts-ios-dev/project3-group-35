//
//  MissingPigController.swift
//  Project3_LearningGame
//
//  Created by Andy Duong on 29/5/18.
//  Copyright © 2018 Adam Zeaiter. All rights reserved.
//

import UIKit

class MissingPigViewController: UIViewController {
    
    
    @IBOutlet weak var buttonNext: UIButton!
    @IBOutlet weak var missingILabel: UILabel!
    @IBOutlet weak var buttonT: UIButton!
    @IBOutlet weak var buttonH: UIButton!
    @IBOutlet weak var buttonI: UIButton!
    @IBOutlet weak var buttonS: UIButton!
    @IBOutlet weak var buttonM: UIButton!
    
    
    
    @IBAction func buttonITapped(_ sender: Any) {
        missingILabel.text = "I"
        next()
    }
    
    func next(){
        if(missingILabel.text == "I"){
            buttonNext.isHidden = false
        }
    }
    
    
    @IBAction func buttonTTapped(_ sender: Any) {
        buttonT.isHidden = true
    }
    
    @IBAction func buttonHTapped(_ sender: Any) {
        buttonH.isHidden = true
    }
    
    @IBAction func buttonSTapped(_ sender: Any) {
        buttonS.isHidden = true
    }
    
    @IBAction func buttonMTapped(_ sender: Any) {
        buttonM.isHidden = true
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
