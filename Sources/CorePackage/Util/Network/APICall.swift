//
//  APICall.swift
//  Core
//
//  Created by Rizky Alfa Uji Gultom on 03/09/21.
//

import Foundation

struct API{
    static let baseUrl = "https://restaurant-api.dicoding.dev/"
}

protocol Endpoint{
    var url: String { get }
}

enum Endpoints {
    enum Gets: Endpoint{
        case list
        case search
        case detail
        
        public var url: String{
            switch self {
            case .list: return "\(API.baseUrl)list"
            case .detail: return "\(API.baseUrl)detail/"
            case .search: return "\(API.baseUrl)search?q="
            }
        }
    }
}
