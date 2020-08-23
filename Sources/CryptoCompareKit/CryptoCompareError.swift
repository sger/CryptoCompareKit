//
//  File.swift
//  
//
//  Created by Spiros Gerokostas on 23/8/20.
//

import Foundation

public enum CryptoCompareError: Error {
    case unknown
    case message(reason: String), parseError(reason: String), networkError(reason: String)

    static func processResponse(data: Data, response: URLResponse) throws -> Data {
        guard let httpResponse = response as? HTTPURLResponse else {
            throw CryptoCompareError.unknown
        }
        if (httpResponse.statusCode == 404) {
            throw CryptoCompareError.message(reason: "Resource not found");
        }
        return data
    }
}
