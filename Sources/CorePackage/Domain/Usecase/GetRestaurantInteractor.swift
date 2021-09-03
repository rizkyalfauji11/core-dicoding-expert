//
//  GetRestaurantInteractor.swift
//  Core
//
//  Created by Rizky Alfa Uji Gultom on 03/09/21.
//

import Foundation
import Combine

class GetRestaurantInteractor: GetRestaurantsUseCase {
    private let repository: RestaurantRepositoryProtocol
    
    required init(repository: RestaurantRepositoryProtocol){
        self.repository = repository
    }
    func getList(isFavorite: Bool) -> AnyPublisher<[RestaurantModel], Error> {
        return repository.getList(isFavorite: isFavorite)
    }
}
