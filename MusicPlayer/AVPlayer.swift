//
//  AVPlayer.swift
//  MusicPlayer
//
//  Created by Ashiq Sulaiman on 25/09/23.
//

import AVFoundation


final class AVTrackPlayer {
    
    private let player: AVPlayer
    
    init(player: AVPlayer = AVPlayer()) {
        self.player = player
    }
    
    func playNewTrackFromUrl(_ url: String) {
        guard let trackUrl = URL(string: url) else { return }
        let item = AVPlayerItem(url: trackUrl)
        AVPlayer(playerItem: item)
        player.play()
    }
    
    func pauseTrack() {
        player.pause()
    }
    
    func resumeTrack() {
        player.play()
    }
    
    
}
