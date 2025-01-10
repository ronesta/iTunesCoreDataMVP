//
//  SearchTermModel.swift
//  iTunesCoreDataMVP
//
//  Created by Ибрагим Габибли on 10.01.2025.
//

import Foundation
import CoreData

@objc(SearchTermModel)
public class SearchTermModel: NSManagedObject {
    @NSManaged public var term: String?
}
