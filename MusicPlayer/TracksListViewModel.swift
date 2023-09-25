//
//  TracksListViewModel.swift
//  MusicPlayer
//
//  Created by Ashiq Sulaiman on 25/09/23.
//

import UIKit

final class TracksListViewModel {
    
    let dataLoader: DataLoaderDelegate
    var data: [Track] = []
    
    init(dataLoader: DataLoaderDelegate) {
        self.dataLoader = dataLoader
    }
    
    func fetchInitialData() {
        dataLoader.fetchData { [weak self] data in
            guard let weakSelf = self else { return }
            weakSelf.data = data
        }
    }
    
    func getCellForIndex(_ index: Int, tableView: UITableView) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: TrackTableViewCell.id) as? TrackTableViewCell,
            index < data.count
        else { return UITableViewCell(frame: .zero) }
        
        cell.viewData = data[index].getTrackCellViewData()
        return cell
    }
    
}
