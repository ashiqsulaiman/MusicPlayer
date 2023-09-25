//
//  TrackListViewController.swift
//  MusicPlayer
//
//  Created by Ashiq Sulaiman on 25/09/23.
//

import UIKit

final class TrackListViewController: UIViewController {

    @IBOutlet private weak var trackListTableView: UITableView!
    private let viewModel: TracksListViewModel
    
    
    init(viewModel: TracksListViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "TrackListViewController", bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trackListTableView.dataSource = self
        trackListTableView.delegate = self
        trackListTableView.estimatedRowHeight = UITableView.automaticDimension
        registerCells()
        viewModel.fetchInitialData()
    }
    
    
    
}


extension TrackListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return viewModel.getCellForIndex(indexPath.item, tableView: tableView)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        AVTrackPlayer().playTrackFromUrl("https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3")
    }
    
    private func registerCells() {
        trackListTableView.register(
            UINib(nibName: TrackTableViewCell.id, bundle: nil),
            forCellReuseIdentifier: TrackTableViewCell.id
        )
    }
    
    
}
