//
//  File.swift
//  
//
//  Created by Spiros Gerokostas on 23/8/20.
//

import Foundation

public struct TopListData: Codable {
    public let coinInfo: CoinInfo
//    public let raw: Raw
//    public let display: Display

    enum CodingKeys: String, CodingKey {
        case coinInfo = "CoinInfo"
//        case raw = "RAW"
//        case display = "DISPLAY"
    }
}
