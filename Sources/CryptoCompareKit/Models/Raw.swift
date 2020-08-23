//
//  File.swift
//  
//
//  Created by Spiros Gerokostas on 23/8/20.
//

import Foundation

public struct Raw: Decodable {
    public let TYPE: String?
    public let MARKET: String?
    public let FROMSYMBOL: String?
    public let TOSYMBOL: String?
    public let FLAGS: String?
    public let PRICE: Double?
    public let LASTUPDATE: Double?
    public let LASTVOLUME: Double?
    public let LASTVOLUMETO: Double?
    public let LASTTRADEID: String?
    public let VOLUMEDAY: Double?
    public let VOLUMEDAYTO: Double?
    public let VOLUME24HOUR: Double?
    public let VOLUME24HOURTO: Double?
    public let OPENDAY: Double?
    public let HIGHDAY: Double?
    public let LOWDAY: Double?
    public let OPEN24HOUR: Double?
    public let HIGH24HOUR: Double?
    public let LOW24HOUR: Double?
    public let LASTMARKET: String?
    public let CHANGE24HOUR: Double?
    public let CHANGEPCT24HOUR: Double?
    public let CHANGEDAY: Double?
    public let CHANGEPCTDAY: Double?
    public let SUPPLY: Double?
    public let MKTCAP: Double?
    public let TOTALVOLUME24H: Double?
    public let TOTALVOLUME24HTO: Double?
}
