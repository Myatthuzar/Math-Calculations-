//
//  ViewController.swift
//  Math Calculations!
//
//  Created by Myat Thuzar Kyaw on 12/31/17.
//  Copyright © 2017 Myat Thuzar Kyaw. All rights reserved.
//

import UIKit
import Darwin
import Foundation
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var soundSwitch: UISwitch!
    
    let quotes = ["If people do not believe that mathematics is simple, it is only because they do not realize how complicated life is.  ~John Louis von Neumann",
    
    "Pure mathematics is, in its way, the poetry of logical ideas.  ~Albert Einstein",
    
    "Black holes result from God dividing the universe by zero.  ~Author Unknown",
    
    "Math is radical!  ~Bumper Sticker",

    "If two wrongs don't make a right, try three.  ~Author Unknown",
    
    "Arithmetic is where numbers fly like pigeons in and out of your head.  ~Carl Sandburg",
    
    "Arithmetic is numbers you squeeze from your head to your hand to your pencil to your paper till you get the answer.  ~Carl Sandburg",
    
    "If equations are trains threading the landscape of numbers, then no train stops at pi.  ~Richard Preston",
    
    "The essence of mathematics is not to make simple things complicated, but to make complicated things simple.  ~S. Gudder",
    
    "The human mind has never invented a labor-saving machine equal to algebra.  ~Author Unknown",
    
    "Go down deep enough into anything and you will find mathematics.  ~Dean Schlicter",

    "A mathematician is a device for turning coffee into theorems. ~Paul Erdos",
    
    "Mathematics is as much an aspect of culture as it is a collection of algorithms.  ~Carl Boyer, 1949, calculus textbook",
    
    "The hardest arithmetic to master is that which enables us to count our blessings.  ~Eric Hoffer",
    
    "Music is the pleasure the human mind experiences from counting without being aware that it is counting.  ~Gottfried Leibniz",
    
    "Few realize that the world of modern mathematics is rich with vivid images and provocative ideas.  ~Ivars Peterson",
    
    "But mathematics is the sister, as well as the servant, of the arts and is touched with the same madness and genius.  ~Harold Marston Morse",
        
    "You may be an engineer if your idea of good interpersonal communication means getting the decimal point in the right place.  ~Author Unknown",
        
    "Mathematics is the supreme judge; from its decisions there is no appeal.  ~Tobias Dantzig",
    
    "Is God just an algorithm? Is love? Are we?~Terri Guillemets",
    
    "As far as the laws of mathematics refer to reality, they are not certain; and as far as they are certain, they do not refer to reality.  ~Albert Einstein",
        
        
    "If there is a God, he's a great mathematician.  ~Paul Dirac",
    
        
    "Pure mathematics is the magician's real wand. ~Novalis",

    "Infinity is a floorless room without walls or ceiling.  ~Author Unknown",

    "One cannot escape the feeling that these mathematical formulas are wiser than we are, wiser even than their discoverers...  ~Heinrich Hertz",
        
        
    "In the binary system we count on our fists instead of on our fingers.  ~Author Unknown",
        
        
    "There are 10 types of people in this world:  those who understand binary and those who don't.  ~Author Unknown",
        
    "The laws of nature are but the mathematical thoughts of God.  ~Euclid",
    
    "Pure mathematics is the world's best game. - Archimedes did it in a bathtub.  ~Richard J. Trudeau, Dots and Lines",
    
    "One of the endlessly alluring aspects of mathematics is that its thorniest paradoxes have a way of blooming into beautiful theories.  ~Philip J. Davis"
]
    @IBOutlet weak var quoteText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func quoteButton(_ sender: Any) {
        self.quoteText.text = quotes[Int(arc4random_uniform(UInt32(quotes.count)))]
    }
    // making button pick random quote
    
    var backgroundMusicPlayer: AVAudioPlayer?
    // making variable about music player
    func playBackgroundMusic(filename: String){
        let url = Bundle.main.url(forResource: filename, withExtension: nil)
        guard let newURL = url else {
            print("Could not find file: \(filename)")
            return
        }
        do {
            backgroundMusicPlayer = try AVAudioPlayer(contentsOf: newURL)
            backgroundMusicPlayer?.numberOfLoops = -1
            backgroundMusicPlayer?.prepareToPlay()
            backgroundMusicPlayer?.play()
        } catch let error as NSError{
            print(error.description)
        }
        // function about playing a certain music file
    }
    
    @IBAction func musicSwitch(_ sender: Any) {
        if soundSwitch.isOn {
            playBackgroundMusic(filename: "The Nights guitar.mp3")
        }
        else{
            backgroundMusicPlayer?.stop()
        }
        // assigning function to switch
    }

}

