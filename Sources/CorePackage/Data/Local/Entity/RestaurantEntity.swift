//
//  RestaurantEntity.swift
//  Core
//
//  Created by Rizky Alfa Uji Gultom on 03/09/21.
//

import Foundation

import Foundation
import RealmSwift

class RestaurantEntity: Object{
    @objc dynamic var id: String = ""
    @objc dynamic var name: String? = ""
    @objc dynamic var desc: String = ""
    @objc dynamic var pictureId: String = ""
    @objc dynamic var city: String = ""
    @objc dynamic var rating: Double = 0.0
    @objc dynamic var isFavorited: Bool = false
    
    override class func primaryKey() -> String? {
        return "id"
    }
}
