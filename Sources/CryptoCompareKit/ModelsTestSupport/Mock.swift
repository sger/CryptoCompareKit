//
//  File.swift
//  
//
//  Created by Spiros Gerokostas on 23/8/20.
//

import Foundation

extension CoinInfo {
    public static let mock = CoinInfo(id: "1", name: "BTC", fullName: "Bitcoin", coinInfoInternal: "", imageURL: "", url: "", algorithm: "", proofType: "", rating: Rating(weiss: Weiss(rating: "", technologyAdoptionRating: "", marketPerformanceRating: "")), netHashesPerSecond: 0, blockNumber: 0, blockTime: 0, blockReward: 0, type: 0, documentType: .webpagecoinp)
}

extension TopListData {
    public static let mock = TopListData(coinInfo: CoinInfo.mock, raw: nil, display: nil)
}

extension TopList {
    public static let mock = TopList(message: "", type: 0, data: [TopListData.mock], hasWarning: false)
}
