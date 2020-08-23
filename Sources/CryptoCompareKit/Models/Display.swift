//
//  File.swift
//  
//
//  Created by Spiros Gerokostas on 23/8/20.
//

import Foundation

public struct Display: Codable {
    public let FROMSYMBOL: String?
    public let TOSYMBOL: String?
    public let MARKET: String?
    public let PRICE: String?
    public let LASTUPDATE: String?
    public let LASTVOLUME: String?
    public let LASTVOLUMETO: String?
    public let LASTTRADEID: String?
    public let VOLUMEDAY: String?
    public let VOLUMEDAYTO: String?
    public let VOLUME24HOUR: String?
    public let VOLUME24HOURTO: String?
    public let OPENDAY: String?
    public let HIGHDAY: String?
    public let LOWDAY: String?
    public let OPEN24HOUR: String?
    public let HIGH24HOUR: String?
    public let LOW24HOUR: String?
    public let LASTMARKET: String?
    public let CHANGE24HOUR: String?
    public let CHANGEPCT24HOUR: String?
    public let CHANGEDAY: String?
    public let CHANGEPCTDAY: String?
    public let SUPPLY: String?
    public let MKTCAP: String?
    public let TOTALVOLUME24H: String?
    public let TOTALVOLUME24HTO: String?
}
