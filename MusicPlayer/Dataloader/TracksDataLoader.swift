//
//  TracksDataLoader.swift
//  MusicPlayer
//
//  Created by Ashiq Sulaiman on 25/09/23.
//

import Foundation

struct TracksDataLoader: DataLoaderDelegate {
    func fetchData(completion: @escaping ([Track]) -> Void) {
        let data = Track.getDummyData()
        completion(data)
    }
}
