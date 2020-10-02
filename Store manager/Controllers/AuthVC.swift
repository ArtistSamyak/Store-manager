//
//  AuthVC.swift
//  Store manager
//
//  Created by Samyak Pawar on 02/10/20.
//

import UIKit
import AVKit
import AVFoundation

class AuthVC: UIViewController {


    @IBOutlet weak var video: UIView!
    
    var timer : Timer?
    
    func playBkVideo() {
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "AuthVid", ofType: "mp4")!))
        let layer = AVPlayerLayer(player: player)
        layer.frame = video.bounds
        layer.videoGravity = .resizeAspectFill
        video.layer.addSublayer(layer)
        player.play()
        
        timer = Timer.scheduledTimer(withTimeInterval: Double(13), repeats: true) { timer in
            //takes the video seek to the start and again plays it.
            player.seek(to: CMTime.zero)
            player.play()
            
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        playBkVideo()
    }
    

   

}
