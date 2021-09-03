//
//  SaveRestaurantInteractor.swift
//  Core
//
//  Created by Rizky Alfa Uji Gultom on 03/09/21.
//

import Foundation
import Combine

public class SaveRestaurantInteractor: SaveRestaurantUseCase{
    
    private var repository: RestaurantRepositoryProtocol
    private let restaurant: RestaurantModel
    
    required init(
        repository: RestaurantRepositoryProtocol,
        restaurant: RestaurantModel
    ){
        self.restaurant = restaurant
        self.repository = repository
    }
    
    public func updateFavoriteRestaurant() -> AnyPublisher<RestaurantModel, Error> {
        return repository.updateFavoriteRestaurant(by: self.restaurant.id)
    }
    
    public func getRestaurant() -> RestaurantModel {
        return restaurant
    }
    
    public func getRestaurant() -> AnyPublisher<RestaurantModel, Error> {
        return repository.getRestaurant(by: restaurant.id)
    }
    
}
