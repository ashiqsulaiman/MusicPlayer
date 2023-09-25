//
//  Coordinator.swift
//  MusicPlayer
//
//  Created by Ashiq Sulaiman on 25/09/23.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}
