//
//  PlayerCoordinator.swift
//  MusicPlayer
//
//  Created by Ashiq Sulaiman on 25/09/23.
//

import AVFoundation
import UIKit

class PlayerCoordinator: Coordinator {
    var navigationController: UINavigationController
    private let player: AVPlayer
    
    init(player: AVPlayer = AVPlayer(), navigationController: UINavigationController) {
        self.player = player
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
    
    
}
