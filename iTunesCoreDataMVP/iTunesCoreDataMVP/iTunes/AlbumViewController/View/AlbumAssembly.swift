//
//  AlbumAssembly.swift
//  iTunesCoreDataMVP
//
//  Created by Ибрагим Габибли on 23.01.2025.
//

import Foundation
import UIKit

struct AlbumAssembly {
    func build(with album: AlbumModel) -> UIViewController {
        let storageManager = CoreDataManager()
        let networkManager = NetworkManager()

        let albumViewController = AlbumViewController()

        let presenter = AlbumPresenter(view: albumViewController,
                                       networkManager: networkManager,
                                       storageManager: storageManager,
                                       album: album
        )

        albumViewController.presenter = presenter

        return albumViewController
    }
}
