//
//  ViewController.swift
//  Piano
//
//  Created by Gwair on 30.10.2020.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pressedNotes(_ sender: UIButton) {
        
        if let nameButton = sender.currentTitle {
            playMusic(note: nameButton)
        }
    }
    func playMusic(note:String){
        
        
        if let fileOfGuard = Bundle.main.url(forResource: note, withExtension: "mp3") {
            player = try! AVAudioPlayer(contentsOf: fileOfGuard)
            player?.play()
        }
    }
}
