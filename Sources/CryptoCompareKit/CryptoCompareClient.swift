//
//  File.swift
//  
//
//  Created by Spiros Gerokostas on 23/8/20.
//

import Foundation
import Combine

public struct CryptoCompareClient {
    
    public var topList: (Int, String) -> AnyPublisher<TopList, CryptoCompareError>
    
    public static let baseImageUrl: String = "https://www.cryptocompare.com"
    
    private static let decoder = JSONDecoder()
    private static let baseUrl: String = "https://min-api.cryptocompare.com"
    
    public enum Endpoint {
        case topList(limit: Int, tsym: String)
        
        func path() -> String {
            switch self {
            case let .topList(limit, tsym):
                return "/data/top/totalvolfull?limit=\(limit)&tsym=\(tsym)"
            }
        }
    }

    public static func fetch<T: Decodable>(endpoint: Endpoint) -> AnyPublisher<T, CryptoCompareError> {
        let request = URLRequest(url: URL(string: "\(Self.baseUrl)\(endpoint.path())")!)
        return URLSession.shared.dataTaskPublisher(for: request)
            .tryMap { data, response in
                return try CryptoCompareError.processResponse(data: data, response: response)
        }
        .decode(type: T.self, decoder: Self.decoder)
        .mapError {
            print($0)
            return CryptoCompareError.parseError(reason: $0.localizedDescription)
        }
        .eraseToAnyPublisher()
    }
}

extension CryptoCompareClient {
    public static let live = Self(
        topList: { limit, tsym in
            Self.fetch(endpoint: .topList(limit: limit, tsym: tsym))
        }
    )
    
    public static let mock = Self(
        topList: { _, _ in
            Just(TopList.mock)
            .setFailureType(to: CryptoCompareError.self)
            .eraseToAnyPublisher()
        }
    )
    
    public static let failedWithReason = Self(
        topList: { (_, _)  in
            Fail(error: CryptoCompareError.message(reason: "Error"))
                .eraseToAnyPublisher()
        }
    )
    
    public static let failedWithNetworkError = Self(
        topList: { (_, _)  in
            Fail(error: CryptoCompareError.networkError(reason: "Network Error"))
                .eraseToAnyPublisher()
        }
    )
    
    public static let empty = Self(
        topList: { (_, _) in
            Just(TopList(message: "", type: 0, data: [], hasWarning: false))
                .setFailureType(to: CryptoCompareError.self)
                .eraseToAnyPublisher()
        }
    )
}
