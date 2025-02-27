//
//  SearchViewProtocol.swift
//  iTunesCoreDataMVP
//
//  Created by Ибрагим Габибли on 23.01.2025.
//

import Foundation

protocol SearchViewProtocol: AnyObject {
    func updateAlbums(_ albums: [AlbumModel])

    func showError(_ message: String)
}
