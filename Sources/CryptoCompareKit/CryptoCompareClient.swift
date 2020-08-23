//
//  File.swift
//  
//
//  Created by Spiros Gerokostas on 23/8/20.
//

import Foundation
import Combine

public struct CryptoCompareClient {
    
    var topList: (Int, String) -> AnyPublisher<TopList, CryptoCompareError>
    
    private static let decoder = JSONDecoder()
    private static let baseUrl: String = "https://www.cryptocompare.com"
    
    public enum Endpoint {
        case topList(limit: Int, tsym: String)
        
        func path() -> String {
            switch self {
            case let .topList(limit, tsym):
                return "/data/top/totalvolfull?limit=\(limit)&tsym=\(tsym)"
            }
        }
    }

    public static func fetch<T: Codable>(endpoint: Endpoint) -> AnyPublisher<T, CryptoCompareError> {
        let request = URLRequest(url: URL(string: "\(Self.baseUrl)\(endpoint.path())")!)
        return URLSession.shared.dataTaskPublisher(for: request)
            .tryMap { data, response in
                return try CryptoCompareError.processResponse(data: data, response: response)
        }
        .decode(type: T.self, decoder: Self.decoder)
        .mapError { CryptoCompareError.parseError(reason: $0.localizedDescription) }
        .eraseToAnyPublisher()
    }
}

extension CryptoCompareClient {
    static let live = Self(
        topList: { limit, tsym in
            Self.fetch(endpoint: .topList(limit: limit, tsym: tsym))
        }
    )
} 
