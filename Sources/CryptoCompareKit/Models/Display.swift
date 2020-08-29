//
//  File.swift
//  
//
//  Created by Spiros Gerokostas on 23/8/20.
//

import Foundation

public struct Display: Decodable {
    
    public let fromSymbol: String?
    public let toSymbol: String?
    public let market: String?
    public let price: String?
    public let lastUpdate: String?
    public let lastVolume: String?
    public let lastVolumeTo: String?
    public let lastTradeId: String?
    public let volumeDay: String?
    public let volumeDayTo: String?
    public let volume24Hour: String?
    public let volume24HourTo: String?
    public let openDay: String?
    public let highDay: String?
    public let lowDay: String?
    public let open24Hour: String?
    public let high24Hour: String?
    public let low24Hour: String?
    public let lastMarket: String?
    public let change24Hour: String?
    public let changePct24Hour: String?
    public let changeDay: String?
    public let changePctDay: String?
    public let supply: String?
    public let mktcap: String?
    public let totalVolume24h: String?
    public let totalVolume24Hto: String?
    
    enum CodingKeys: String, CodingKey {
        case fromSymbol = "FROMSYMBOL"
        case toSymbol = "TOSYMBOL"
        case market = "MARKET"
        case price = "PRICE"
        case lastUpdate = "LASTUPDATE"
        case lastVolume = "LASTVOLUME"
        case lastVolumeTo = "LASTVOLUMETO"
        case lastTradeId = "LASTTRADEID"
        case volumeDay = "VOLUMEDAY"
        case volumeDayTo = "VOLUMEDAYTO"
        case volume24Hour = "VOLUME24HOUR"
        case volume24HourTo = "VOLUME24HOURTO"
        case openDay = "OPENDAY"
        case highDay = "HIGHDAY"
        case lowDay = "LOWDAY"
        case open24Hour = "OPEN24HOUR"
        case high24Hour = "HIGH24HOUR"
        case low24Hour = "LOW24HOUR"
        case lastMarket = "LASTMARKET"
        case change24Hour = "CHANGE24HOUR"
        case changePct24Hour = "CHANGEPCT24HOUR"
        case changeDay = "CHANGEDAY"
        case changePctDay = "CHANGEPCTDAY"
        case supply = "SUPPLY"
        case mktcap = "MKTCAP"
        case totalVolume24h = "TOTALVOLUME24H"
        case totalVolume24Hto = "TOTALVOLUME24HTO"
    }
}
