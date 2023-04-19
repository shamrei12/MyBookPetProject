//
//  RatingBookModel.swift
//  Mybook
//
//  Created by Алексей Шамрей on 17.04.23.
//

import Foundation

struct RatingInfo: Codable {
    let summary: Summary
    let counts: Counts
}

struct Summary: Codable {
    let average: Double?
    let count: Int?
    let sortable: Double?
}

struct Counts: Codable {
    let one: Int
    let two: Int
    let three: Int
    let four: Int
    let five: Int
    
    enum CodingKeys: String, CodingKey {
        case one = "1"
        case two = "2"
        case three = "3"
        case four = "4"
        case five = "5"
    }
}
