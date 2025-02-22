//
//  AlbumAssemblyProtocol.swift
//  iTunesCoreDataMVP
//
//  Created by Ибрагим Габибли on 23.01.2025.
//

import Foundation
import UIKit

protocol AlbumAssemblyProtocol {
    func build(with album: AlbumModel) -> UIViewController
}
