//
//  TrackTableViewCell.swift
//  MusicPlayer
//
//  Created by Ashiq Sulaiman on 25/09/23.
//

import UIKit

final class TrackTableViewCell: UITableViewCell {

    static let id: String = "TrackTableViewCell"
    @IBOutlet private weak var artistLabel: UILabel!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var audioThumbnail: UIImageView!
    
    var viewData: ViewData? {
        didSet {
            guard let data = viewData else { return }
            populateData(viewData: data)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    private func populateData(viewData: ViewData) {
        self.titleLabel.text = viewData.title
        self.artistLabel.text = viewData.artist
        self.audioThumbnail.image = viewData.thumbnailImage
    }
    
}


extension TrackTableViewCell {
    struct ViewData {
        let title: String
        let thumbnailImage: UIImage?
        let artist: String
    }
}
