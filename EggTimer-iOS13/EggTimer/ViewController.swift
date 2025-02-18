//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLable: UILabel!
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var player: AVAudioPlayer!
    var timer: Timer?
    var totalTime = 0
    var secondsPassed = 0
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        // Reset timer and progress
        timer?.invalidate()
        progressBar.progress = 0.0
        secondsPassed = 0
        
        // Get the selected hardness
        let hardness = sender.currentTitle!
        
        if let time = eggTimes[hardness] {
            totalTime = time
            titleLable.text = "Cooking \(hardness)..."
            
            // Start the timer
            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] timer in
                if self.secondsPassed < self.totalTime {
                    self.secondsPassed += 1
                    progressBar.progress = Float(secondsPassed) / Float(totalTime)
                } else {
                    timer.invalidate()
                    titleLable.text = "Done!"
                    playSound(soundName: "alarm_sound") // Play sound on completion
                }
            }
        }
    }
    
    func playSound(soundName: String) {
        guard let url = Bundle.main.url(forResource: soundName, withExtension: "mp3") else {
            print("Sound file not found")
            return
        }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.play()
        } catch {
            print("Error playing sound: \(error.localizedDescription)")
        }
    }
}
