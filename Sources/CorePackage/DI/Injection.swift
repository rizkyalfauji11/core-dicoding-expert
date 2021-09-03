//
//  Injection.swift
//  Core
//
//  Created by Rizky Alfa Uji Gultom on 03/09/21.
//

import Foundation
import RealmSwift

public final class Injection: NSObject {
  
  private func provideRepository() -> RestaurantRepositoryProtocol {
    let realm = try? Realm()

    let locale: RestaurantaLocalDataSource = RestaurantaLocalDataSource.sharedInstance(realm)
    let remote: RestaurantRemoteDataSource = RestaurantRemoteDataSource.sharedInstance

    return RestaurantRepository.sharedInstance(locale, remote)
  }

  public func provideHome() -> GetRestaurantsUseCase {
    let repository = provideRepository()
    return GetRestaurantInteractor(repository: repository)
  }

  public func provideDetail(restaurant: RestaurantModel) -> SaveRestaurantUseCase {
    let repository = provideRepository()
    return SaveRestaurantInteractor(repository: repository, restaurant: restaurant)
  }
}
