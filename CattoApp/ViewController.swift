//
//  ViewController.swift
//  CattoApp
//
//  Created by P.M. Student on 11/7/19.
//  Copyright © 2019 P.M. Student. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var musicEffect:AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    @IBAction func meow(_ sender: UIButton) {
        
        let index = sender.tag
        
        switch index {
        case 0: guard let path = Bundle.main.path(forResource: "Angry-cat-sounds", ofType: "mp3")
            else { return }
        
        let url = URL(fileURLWithPath: path)
        
        musicEffect = try? AVAudioPlayer(contentsOf: url, fileTypeHint: nil)
        musicEffect?.prepareToPlay()
        musicEffect?.setVolume(50, fadeDuration: 5)
        musicEffect?.play()
            
            
        default:break
            
        }
    }
    
    
    




}
        
            
        
    
    
    
        
   
        
        
    
    
        
    
    








