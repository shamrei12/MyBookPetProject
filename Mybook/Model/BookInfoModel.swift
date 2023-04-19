// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let singleBook = try? JSONDecoder().decode(SingleBook.self, from: jsonData)

import Foundation

struct OpenLibraryResponse: Codable {
    let subtitle: String?
    let key: String
    let title: String
    let created: DateValue
    let covers: [Int]
    let firstPublishDate: String?
    let latestRevision: Int
    let lastModified: DateValue
    let authors: [AuthorRole]
    let type: Type
    let revision: Int
    
    enum CodingKeys: String, CodingKey {
        case subtitle
        case key
        case title
        case created
        case covers
        case firstPublishDate = "first_publish_date"
        case latestRevision = "latest_revision"
        case lastModified = "last_modified"
        case authors
        case type
        case revision
    }
}

struct DateValue: Codable {
    let type: String
    let value: String
}

struct AuthorRole: Codable {
    let type: Type
    let author: Author
}

struct Type: Codable {
    let key: String
}

struct Author: Codable {
    let key: String
}
