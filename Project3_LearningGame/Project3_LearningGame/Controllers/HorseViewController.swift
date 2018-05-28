//
//  HorseViewController.swift
//  Project3_LearningGame
//
//  Created by Adam Zeaiter on 28/5/18.
//  Copyright © 2018 Adam Zeaiter. All rights reserved.
//

import UIKit
import AVFoundation

class HorseViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    @IBOutlet weak var myWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        getVideo(videoCode: "dUB4eqlNg9o")
        
        do{
            let audioPath = Bundle.main.path(forResource: "Neigh", ofType: "mp3")
            try audioPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch {
            //ERROR
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getVideo(videoCode:String){
        let url = URL(string: "http://www.youtube.com/embed/\(videoCode)")
        myWebView.loadRequest(URLRequest(url: url!))
    }
    
    @IBAction func playPressed(_ sender: Any) {
        audioPlayer.play()
    }
}
