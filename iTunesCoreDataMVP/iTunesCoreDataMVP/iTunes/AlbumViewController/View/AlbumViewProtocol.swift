//
//  AlbumViewProtocol.swift
//  iTunesCoreDataMVP
//
//  Created by Ибрагим Габибли on 23.01.2025.
//

import Foundation
import UIKit

protocol AlbumViewProtocol: AnyObject {
    func displayAlbumDetails(album: AlbumModel, image: UIImage)
}
