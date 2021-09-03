//
//  SaveRestaurantUseCase.swift
//  Core
//
//  Created by Rizky Alfa Uji Gultom on 03/09/21.
//

import Foundation
import Combine

public protocol SaveRestaurantUseCase {
    func updateFavoriteRestaurant() -> AnyPublisher<RestaurantModel, Error>
    func getRestaurant() -> RestaurantModel
    func getRestaurant() -> AnyPublisher<RestaurantModel, Error>
}
