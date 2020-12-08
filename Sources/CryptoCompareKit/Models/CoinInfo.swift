//
//  File.swift
//  
//
//  Created by Spiros Gerokostas on 23/8/20.
//

import Foundation

public struct CoinInfo: Decodable {
    public let id, name, fullName, coinInfoInternal: String
    public let imageURL, url, algorithm, proofType: String
    public let rating: Rating
    public let netHashesPerSecond: Double
    public let blockNumber: Int
    public let blockTime: Double
    public let blockReward: Double
    public let type: Int
    public let documentType: DocumentType

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case name = "Name"
        case fullName = "FullName"
        case coinInfoInternal = "Internal"
        case imageURL = "ImageUrl"
        case url = "Url"
        case algorithm = "Algorithm"
        case proofType = "ProofType"
        case rating = "Rating"
        case netHashesPerSecond = "NetHashesPerSecond"
        case blockNumber = "BlockNumber"
        case blockTime = "BlockTime"
        case blockReward = "BlockReward"
        case type = "Type"
        case documentType = "DocumentType"
    }
}

public enum DocumentType: String, Decodable {
    case webpagecoinp = "Webpagecoinp"
}

public struct Rating: Decodable {
    public let weiss: Weiss

    enum CodingKeys: String, CodingKey {
        case weiss = "Weiss"
    }
}

public struct Weiss: Decodable {
    public let rating, technologyAdoptionRating, marketPerformanceRating: String

    enum CodingKeys: String, CodingKey {
        case rating = "Rating"
        case technologyAdoptionRating = "TechnologyAdoptionRating"
        case marketPerformanceRating = "MarketPerformanceRating"
    }
}
