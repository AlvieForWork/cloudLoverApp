//
//  ViewController.swift
//  cloudLover
//
//  Created by Alvie on 2021/8/31.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var speechTextField: UITextField!
    @IBOutlet weak var speechRateText: UILabel!
    @IBOutlet weak var speechPitchText: UILabel!
    @IBOutlet weak var speechVolumeText: UILabel!
    @IBOutlet weak var speechRate: UISlider!
    @IBOutlet weak var speechPitch: UISlider!
    @IBOutlet weak var speechVolume: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
//用Label顯示slider數值，.format: "%.1f"讓字串只顯示小數點後一位
    @IBAction func changeSlider(_ sender: Any) {
        speechRateText.text = String(format: "%.1f", speechRate.value)
        speechPitchText.text = String(format: "%.1f", speechPitch.value)
        speechVolumeText.text = String(format: "%.1f", speechVolume.value)
    }
    
    
//讓它說話
    @IBAction func playButton(_ sender: UIButton) {
        let utterance = AVSpeechUtterance(string: speechTextField.text!)
        let synthesizer = AVSpeechSynthesizer()
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        utterance.rate = speechRate.value
        utterance.pitchMultiplier = speechPitch.value
        utterance.volume = speechVolume.value
        synthesizer.speak(utterance)
    }
    

}

