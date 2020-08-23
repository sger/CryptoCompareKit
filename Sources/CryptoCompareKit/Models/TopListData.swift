//
//  File.swift
//  
//
//  Created by Spiros Gerokostas on 23/8/20.
//

import Foundation

public struct TopListData: Decodable, Identifiable, Equatable {
    
    public var id: UUID = UUID()
    public let coinInfo: CoinInfo?
    public let raw: [String: Raw]
    public let display: [String: Display]
    
    public static func == (lhs: TopListData, rhs: TopListData) -> Bool {
        return lhs.coinInfo?.fullName == rhs.coinInfo?.fullName
    }

    enum CodingKeys: String, CodingKey {
        case coinInfo = "CoinInfo"
        case raw = "RAW"
        case display = "DISPLAY"
    }
}
