//
//  AlbumPresenter.swift
//  iTunesCoreDataMVP
//
//  Created by Ибрагим Габибли on 23.01.2025.
//

import Foundation
import UIKit

class AlbumPresenter: AlbumPresenterProtocol {
    weak var view: AlbumViewProtocol?
    private let networkManager: NetworkManagerProtocol
    private let storageManager: StorageManagerProtocol

    private let album: AlbumModel

    init(networkManager: NetworkManagerProtocol,
         storageManager: StorageManagerProtocol,
         album: AlbumModel
    ) {
        self.networkManager = networkManager
        self.storageManager = storageManager
        self.album = album
    }

    func loadAlbumDetails() {
        guard let imageData = storageManager.fetchImageData(forImageId: Int(album.artistId)),
              let image = UIImage(data: imageData) else {
            return
        }

            view?.displayAlbumDetails(album: album, image: image)
    }
}
