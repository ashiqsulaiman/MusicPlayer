//
//  MainCoordinator.swift
//  MusicPlayer
//
//  Created by Ashiq Sulaiman on 25/09/23.
//

import UIKit

final class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let dataLoader: DataLoaderDelegate = TracksDataLoader()
        let viewModel: TracksListViewModel = TracksListViewModel(dataLoader: dataLoader)
        let vc = TrackListViewController(viewModel: viewModel)
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}
