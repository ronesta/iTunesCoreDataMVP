//
//  StorageManagerProtocol.swift
//  iTunesCoreDataMVP
//
//  Created by Ибрагим Габибли on 23.01.2025.
//

import Foundation

protocol StorageManagerProtocol: AnyObject {
    func saveAlbums(_ albums: [(album: Album, imageData: Data?)], for searchTerm: String)

    func fetchAlbums(for searchTerm: String) -> [AlbumModel]

    func saveSearchTerm(_ term: String)

    func getSearchHistory() -> [String]

    func fetchImageData(forImageId id: Int) -> Data?
}
