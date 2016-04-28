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
    
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var vaderButton: UIButton!
    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var recordedAudioURL: NSURL!
    var audioFile: AVAudioFile!
    var audioEngine: AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: NSTimer!
    
    enum ButtonType: Int {case Slow = 0, Fast, Chipmunk, Vader, Echo, Reverb}
    
    
    @IBAction func playSoundForButton(sender: UIButton){
        print("Play Sound Button Pressed")
        stopButton.enabled = true
        switch(ButtonType(rawValue: sender.tag)!){
        case .Slow:
            playSound(rate: 0.5)
        case .Fast:
            playSound(rate: 1.5)
        case .Chipmunk:
            playSound(pitch: 1000)
        case .Vader:
            playSound(pitch: -1000)
        case .Echo:
            playSound(echo: true)
        case .Reverb:
            playSound(reverb: true)
        }
        configureUI(.Playing)
        
    }
    @IBAction func stopPressed(sender: UIButton){
        print("Stop Play Sound")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAudio()
        stopButton.enabled = false
    }
    override func viewWillAppear(animated: Bool) {
        configureUI(.NotPlaying)
        
    }
}
