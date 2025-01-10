//
//  AlbumModel.swift
//  iTunesCoreDataMVP
//
//  Created by Ибрагим Габибли on 10.01.2025.
//

import Foundation
import CoreData

@objc(AlbumModel)
public class AlbumModel: NSManagedObject {
    @NSManaged public var artistId: Int64
    @NSManaged public var artistName: String?
    @NSManaged public var artworkUrl100: String?
    @NSManaged public var collectionName: String?
    @NSManaged public var collectionPrice: Double
    @NSManaged public var imageData: Data?
    @NSManaged public var term: String?
}
