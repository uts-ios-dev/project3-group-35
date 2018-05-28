//
//  SheepViewController.swift
//  Project3_LearningGame
//
//  Created by Adam Zeaiter on 28/5/18.
//  Copyright © 2018 Adam Zeaiter. All rights reserved.
//

import UIKit

class SheepViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        getVideo(videoCode: "1dttq5p0xUM")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getVideo(videoCode:String){
        let url = URL(string: "http://www.youtube.com/embed/\(videoCode)")
        myWebView.loadRequest(URLRequest(url: url!))
    }
}
