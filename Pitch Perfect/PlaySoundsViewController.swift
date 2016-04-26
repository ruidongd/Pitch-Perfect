//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by DaiRuidong on 16/4/16.
//  Copyright © 2016年 Ruidong Dai. All rights reserved.
//

import UIKit
import AVFoundation


class PlaySoundsViewController: UIViewController {
    
    @IBOutlet weak var echoButton: UIView!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var darthVaderButton: UIButton!
    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    @IBAction func playSoundForButton(sender: UIButton){
        print("Play Sound Button Pressed")
    }
    @IBAction func stopSoundPlay(sender: UIButton){
        print("Stop Play Sound")
    }
    
    var recordedAudioURL: NSURL!
}
