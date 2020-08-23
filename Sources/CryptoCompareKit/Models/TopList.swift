//
//  File.swift
//  
//
//  Created by Spiros Gerokostas on 23/8/20.
//

import Foundation

public struct TopList: Codable {
    public let message: String
    public let type: Int
    public let data: [TopListData]
    public let hasWarning: Bool

    enum CodingKeys: String, CodingKey {
        case message = "Message"
        case type = "Type"
        case data = "Data"
        case hasWarning = "HasWarning"
    }
}
