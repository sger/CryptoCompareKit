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
    public static let mock = Raw(TYPE: "", MARKET: "", FROMSYMBOL: "", TOSYMBOL: "", FLAGS: "", PRICE: 0, LASTUPDATE: 0, LASTVOLUME: 0, LASTVOLUMETO: 0, LASTTRADEID: "", VOLUMEDAY: 0, VOLUMEDAYTO: 0, VOLUME24HOUR: 0, VOLUME24HOURTO: 0, OPENDAY: 0, HIGHDAY: 0, LOWDAY: 0, OPEN24HOUR: 0, HIGH24HOUR: 0, LOW24HOUR: 0, LASTMARKET: "", CHANGE24HOUR: 0, CHANGEPCT24HOUR: 0, CHANGEDAY: 0, CHANGEPCTDAY: 0, SUPPLY: 0, MKTCAP: 0, TOTALVOLUME24H: 0, TOTALVOLUME24HTO: 0)
}

extension Display {
    public static let mock = Display(FROMSYMBOL: "", TOSYMBOL: "", MARKET: "", PRICE: "", LASTUPDATE: "", LASTVOLUME: "", LASTVOLUMETO: "", LASTTRADEID: "", VOLUMEDAY: "", VOLUMEDAYTO: "", VOLUME24HOUR: "", VOLUME24HOURTO: "", OPENDAY: "", HIGHDAY: "", LOWDAY: "", OPEN24HOUR: "", HIGH24HOUR: "", LOW24HOUR: "", LASTMARKET: "", CHANGE24HOUR: "", CHANGEPCT24HOUR: "", CHANGEDAY: "", CHANGEPCTDAY: "", SUPPLY: "", MKTCAP: "", TOTALVOLUME24H: "", TOTALVOLUME24HTO: "")
}
