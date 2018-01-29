//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Kerry Nasta on 1/15/18.
//  Copyright © 2018 Kerry Nasta. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var awesomeImage: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var awesomePlayer = AVAudioPlayer()
    var index = 0
    var imageNumber = -1
    var soundNumber = -1
    let numberOfImages = 4
    let numberOfSounds = 4
    
    // code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func playSound(soundName: String) {
        //can we load in the file soundName
        if let sound = NSDataAsset(name: soundName) {
            // check if sound.data is a sound file
            do {
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                // if sound.data is not a valid audio file
                print("ERROR: data in \(soundName) couldn't be played as a sound")
            }
        } else {
            //if readin in the NSDataAsset didn't work, tell the error / report the error
            print("ERROR: file \(soundName) didn't load")
        }
    }
    //is the last random number the same as the new one? if so, generate a new one
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex = -1
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(maxValue)))
        } while lastNumber == newIndex
        return newIndex
    }
    
    @IBAction func showMessagePress(_ sender: UIButton) {
        
        let messages = ["You Are Fantastic!",
                        "You Are Great!",
                        "You Are Amazing!",
                        "when the genius bar needs help, they call you!",
                        "You Brighten My Day!",
                        "You Are Da Bomb!",
                        "I can't wait to use your app!",
        "Fabulous? that's you!"]

        var newIndex = -1
        
        // show a message
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        // show an image
        awesomeImage.isHidden = false //show the image
        imageNumber = nonRepeatingRandom(lastNumber: imageNumber, maxValue: numberOfImages)
        awesomeImage.image = UIImage(named: "image\(imageNumber)")
        
        // get a random number to use in our soundName file
        soundNumber = nonRepeatingRandom(lastNumber: soundNumber, maxValue: numberOfSounds)
        
        // play a sound
        let soundName = "sound\(soundNumber)"
        playSound(soundName: soundName)
    }
}
