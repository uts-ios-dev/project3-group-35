
//
//  SheepSoundViewController.swift
//  Project3_LearningGame
//
//  Created by Adam Zeaiter on 2/6/18.
//  Copyright © 2018 Adam Zeaiter. All rights reserved.
//

import UIKit
import AVFoundation

class SheepSoundViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    var audioPlayerRight:AVAudioPlayer!
    var audioPlayerWrong:AVAudioPlayer!
    @IBOutlet weak var endPressed: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        endPressed.isEnabled = false
        
        do{
            let audioPath = Bundle.main.path(forResource: "Bleat", ofType: "mp3")
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
    
    @IBAction func sheepSoundPressed(_ sender: Any) {
        audioPlayer.play()
    }
    
    @IBAction func chickenPressed(_ sender: Any) {
        audioPlayerWrong.play()
    }
    
    @IBAction func sheepPressed(_ sender: Any) {
        audioPlayerRight.play()
        endPressed.isEnabled = true
    }
    
    @IBAction func horsePressed(_ sender: Any) {
        audioPlayerWrong.play()
    }
    
    @IBAction func pigPressed(_ sender: Any) {
        audioPlayerWrong.play()
    }
    
    @IBAction func endPressed(_ sender: Any) {
        audioPlayerRight.stop()
    }
}
