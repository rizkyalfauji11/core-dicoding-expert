//
//  RestaurantModel.swift
//  Core
//
//  Created by Rizky Alfa Uji Gultom on 03/09/21.
//

import Foundation

public struct RestaurantModel: Equatable, Identifiable {
    public let id: String
    public let name: String
    public let imageUrl: String
    public let description: String
    public let city: String
    public let rating: Double
    public let isFavorited: Bool
}
