//
//  GetRestaurantsUseCase.swift
//  Core
//
//  Created by Rizky Alfa Uji Gultom on 03/09/21.
//

import Foundation
import Combine

public protocol GetRestaurantsUseCase {
    func getList(isFavorite: Bool) -> AnyPublisher<[RestaurantModel], Error>
}
