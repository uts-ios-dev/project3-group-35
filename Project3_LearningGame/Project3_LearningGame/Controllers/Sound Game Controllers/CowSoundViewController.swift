//
//  CowSoundViewController.swift
//  Project3_LearningGame
//
//  Created by Adam Zeaiter on 29/5/18.
//  Copyright © 2018 Adam Zeaiter. All rights reserved.
//

import UIKit
import AVFoundation

class CowSoundViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    var audioPlayerRight:AVAudioPlayer!
    var audioPlayerWrong:AVAudioPlayer!
    @IBOutlet weak var nextPressed: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        nextPressed.isEnabled = false
        
        do{
            let audioPath = Bundle.main.path(forResource: "Moo", ofType: "mp3")
            try audioPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch {
            //ERROR
        }
        
        do{
            let audioPathRight = Bundle.main.path(forResource: "Right", ofType: "mp3")
            try audioPlayerRight = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathRight!) as URL)
        }
        catch {
            //ERROR
        }
        
        do{
            let audioPathWrong = Bundle.main.path(forResource: "Wrong", ofType: "mp3")
            try audioPlayerWrong = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathWrong!) as URL)
        }
        catch {
            //ERROR
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cowPlayPressed(_ sender: Any) {
        audioPlayer.play()
    }
    
    @IBAction func horsePressed(_ sender: Any) {
        audioPlayerWrong.play()
    }
    
    @IBAction func chickenPressed(_ sender: Any) {
        audioPlayerWrong.play()
    }
    
    @IBAction func cowPressed(_ sender: Any) {
        audioPlayerRight.play()
        nextPressed.isEnabled = true
    }
    
    @IBAction func sheepPressed(_ sender: Any) {
        audioPlayerWrong.play()
    }
    
    @IBAction func nextPressed(_ sender: Any) {
        audioPlayerRight.stop()
    }
    
}
