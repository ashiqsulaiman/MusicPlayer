//
//  DataLoaderProtocol.swift
//  MusicPlayer
//
//  Created by Ashiq Sulaiman on 25/09/23.
//

import Foundation

protocol DataLoaderDelegate {
    func fetchData(completion: @escaping([Track]) -> Void)
}
