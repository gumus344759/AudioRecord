//
//  PlaySoundsViewController.swift
//  Gun3
//
//  Created by MacBook on 27/02/16.
//  Copyright © 2016 sgumus. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    var audioPlayer :AVAudioPlayer!
    
    //
    
    
    @IBAction func playSlowAudio(sender: AnyObject) {
        
            audioPlayer.rate=0.5
            play()
  
    }

    @IBAction func stopAudio(sender: AnyObject) {
        audioPlayer.stop()
    }
    
    @IBAction func sincap(sender: AnyObject) {
        
         }
    
    
    @IBAction func playFastAuidio(sender: AnyObject) {
        
        audioPlayer.rate=2
        play()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    if let filapath=NSBundle.mainBundle().URLForResource("movie_quote", withExtension: "mp3")
    {
          audioPlayer = try! AVAudioPlayer(contentsOfURL: filapath)
        audioPlayer.enableRate=true
        
        
        }
        else
    {
        print("media not found")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play()
    {
        audioPlayer.stop()
        audioPlayer.currentTime=0
        audioPlayer.play()
    }
    
         
}
