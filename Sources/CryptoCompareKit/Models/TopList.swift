//
//  File.swift
//  
//
//  Created by Spiros Gerokostas on 23/8/20.
//

import Foundation

public struct TopList: Decodable {
    
    public let message: String
    public let type: Int
    public let data: [TopListData]
    public let hasWarning: Bool

    public init(message: String = "",
                type: Int = 0,
                data: [TopListData] = [],
                hasWarning: Bool = false) {
        self.message = message
        self.type = type
        self.data = data
        self.hasWarning = hasWarning
    }
    
    enum CodingKeys: String, CodingKey {
        case message = "Message"
        case type = "Type"
        case data = "Data"
        case hasWarning = "HasWarning"
    }
}
