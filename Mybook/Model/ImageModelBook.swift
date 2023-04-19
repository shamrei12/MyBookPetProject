//
//  ImageModelBook.swift
//  Mybook
//
//  Created by Алексей Шамрей on 17.04.23.
//

import Foundation

struct ImageBook: Codable {
    let book: Book
    
    struct Book: Codable {
        let key: String?
        let title: String?
        let authors: [Author]
        let numberOfPages: Int?
        let identifiers: Identifiers
        let publishers: [Publisher]
        let publishDate: String?
        let subtitle: String?
        let cover: Cover?
        
        enum CodingKeys: String, CodingKey {
            case key
            case title
            case subtitle
            case authors
            case numberOfPages = "number_of_pages"
            case identifiers
            case publishers
            case publishDate = "publish_date"
            case cover
        }
        
        struct Author: Codable {
            let name: String?
            let url: String?
        }
        
        struct Identifiers: Codable {
            let isbn_10: [String]?
            let isbn_13: [String]?
            let openlibrary: [String]?
        }
        
        struct Publisher: Codable {
            let name: String?
        }
        
        struct Cover: Codable {
            let small: String?
            let medium: String?
            let large: String?
        }
    }
}

