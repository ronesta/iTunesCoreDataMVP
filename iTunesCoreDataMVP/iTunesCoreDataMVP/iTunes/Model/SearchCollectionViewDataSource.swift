//
//  SearchCollectionViewDataSource.swift
//  iTunesCoreDataMVP
//
//  Created by Ибрагим Габибли on 23.01.2025.
//

import Foundation
import UIKit

final class SearchCollectionViewDataSource: NSObject, SearchDataSourceProtocol {
    var albums = [AlbumModel]()
    var presenter: SearchPresenterProtocol
    var storageManager: StorageManagerProtocol

    init(presenter: SearchPresenterProtocol,
         storageManager: StorageManagerProtocol) {
        self.presenter = presenter
        self.storageManager = storageManager
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        albums.count
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: AlbumCollectionViewCell.id,
            for: indexPath)
                as? AlbumCollectionViewCell else {
            return UICollectionViewCell()
        }

        let album = albums[indexPath.item]
        let image = presenter.loadImage(for: album)

        cell.configure(with: album, image: image)
        return cell
    }
}
