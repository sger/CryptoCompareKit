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
    public static let mock = TopListData(coinInfo: CoinInfo.mock, raw: ["USD": Raw.mock], display: ["USD": Display.mock])
}

extension TopList {
    public static let mock = TopList(message: "", type: 0, data: [TopListData.mock], hasWarning: false)
}

extension Raw {
    public static let mock = Raw(type: "", market: "", fromSymbol: "", toSymbol: "", flags: "", price: 0, lastUpdate: 0, lastVolume: 0, lastVolumeTo: 0, lastTradeId: "", volumeDay: 0, volumeDayTo: 0, volume24Hour: 0, volume24HourTo: 0, openDay: 0, highDay: 0, lowDay: 0, open24Hour: 0, high24Hour: 0, low24Hour: 0, lastMarket: "", change24Hour: 0, changePct24Hour: 0, changeDay: 0, changePctDay: 0, supply: 0, mktcap: 0, totalVolume24h: 0, totalVolume24Hto: 0)
}

extension Display {
    public static let mock = Display(fromSymbol: "", toSymbol: "", market: "", price: "", lastUpdate: "", lastVolume: "", lastVolumeTo: "", lastTradeId: "", volumeDay: "", volumeDayTo: "", volume24Hour: "", volume24HourTo: "", openDay: "", highDay: "", lowDay: "", open24Hour: "", high24Hour: "", low24Hour: "", lastMarket: "", change24Hour: "", changePct24Hour: "", changeDay: "", changePctDay: "", supply: "", mktcap: "", totalVolume24h: "", totalVolume24Hto: "")
}
