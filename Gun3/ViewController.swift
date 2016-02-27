//
//  ViewController.swift
//  Gun3
//
//  Created by MacBook on 27/02/16.
//  Copyright © 2016 sgumus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordinInProgresing: UILabel!
    
    @IBAction func recordingButton(sender: AnyObject) {
        recordinInProgresing.hidden=false
        stopButton.hidden=false
    }
    @IBAction func stopRecording(sender: AnyObject) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        stopButton.hidden=true
    }


}

