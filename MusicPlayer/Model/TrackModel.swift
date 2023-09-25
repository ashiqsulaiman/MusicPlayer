//
//  TrackModel.swift
//  MusicPlayer
//
//  Created by Ashiq Sulaiman on 25/09/23.
//

import UIKit

struct Track: Codable {
    let title, artist, album: String
    let duration: Double
}

extension Track {
    func getTrackCellViewData() -> TrackTableViewCell.ViewData {
        let image = UIImage(named: "placeholder")
        return TrackTableViewCell.ViewData(title: title, thumbnailImage: image, artist: artist)
    }
}

extension Track {
    static func getDummyData() -> [Track] {
        return [
            Track(title: "Sample 1", artist: "Artist 1", album: "Album 1", duration: 3.0),
            Track(title: "Sample 2", artist: "Artist 1", album: "Album 1", duration: 3.0),
            Track(title: "Sample 3", artist: "Artist 1", album: "Album 1", duration: 3.0),
            Track(title: "Sample 4", artist: "Artist 1", album: "Album 1", duration: 3.0),
            Track(title: "Sample 5", artist: "Artist 1", album: "Album 1", duration: 3.0),
            Track(title: "Sample 6", artist: "Artist 1", album: "Album 1", duration: 3.0),
            Track(title: "Sample 7", artist: "Artist 1", album: "Album 1", duration: 3.0)
        ]
    }
}
