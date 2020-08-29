//
//  File.swift
//  
//
//  Created by Spiros Gerokostas on 23/8/20.
//

import Foundation

public struct Raw: Decodable {
    
    public let type: String?
    public let market: String?
    public let fromSymbol: String?
    public let toSymbol: String?
    public let flags: String?
    public let price: Double?
    public let lastUpdate: Double?
    public let lastVolume: Double?
    public let lastVolumeTo: Double?
    public let lastTradeId: String?
    public let volumeDay: Double?
    public let volumeDayTo: Double?
    public let volume24Hour: Double?
    public let volume24HourTo: Double?
    public let openDay: Double?
    public let highDay: Double?
    public let lowDay: Double?
    public let open24Hour: Double?
    public let high24Hour: Double?
    public let low24Hour: Double?
    public let lastMarket: String?
    public let change24Hour: Double?
    public let changePct24Hour: Double?
    public let changeDay: Double?
    public let changePctDay: Double?
    public let supply: Double?
    public let mktcap: Double?
    public let totalVolume24h: Double?
    public let totalVolume24Hto: Double?
    
    enum CodingKeys: String, CodingKey {
        case type = "TYPE"
        case market = "MARKET"
        case fromSymbol = "FROMSYMBOL"
        case toSymbol = "TOSYMBOL"
        case flags = "FLAGS"
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
