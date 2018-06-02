//
//  MissingDuckController.swift
//  Project3_LearningGame
//
//  Created by Andy Duong on 30/5/18.
//  Copyright © 2018 Adam Zeaiter. All rights reserved.
//

import UIKit

class MissingDuckViewController: UIViewController {
    
    
    @IBOutlet weak var missingDLabel: UILabel!
    @IBOutlet weak var missingKLabel: UILabel!
    @IBOutlet weak var buttonE: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    @IBOutlet weak var buttonG: UIButton!
    @IBOutlet weak var buttonK: UIButton!
    @IBOutlet weak var buttonL: UIButton!
    @IBOutlet weak var buttonNext: UIButton!
    
    
    
    @IBAction func buttonETapped(_ sender: Any) {
        buttonE.isHidden = true
    }
    
    
    @IBAction func buttonDTapped(_ sender: Any) {
        missingDLabel.text = "D"
        next()
    }
    
    @IBAction func buttonGTapped(_ sender: Any) {
        buttonG.isHidden = true
    }
    
    
    @IBAction func buttonKTapped(_ sender: Any) {
        missingKLabel.text = "K"
        next()
    }
    
    
    @IBAction func buttonLTapped(_ sender: Any) {
        buttonL.isHidden = true
    }
    
    
    
    func next(){
        if(missingDLabel.text == "D") && (missingKLabel.text == "K"){
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
