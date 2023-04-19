//
//  bookListModel.swift
//  Mybook
//
//  Created by Алексей Шамрей on 14.04.23.
//

import Foundation


protocol BookList {
    var name: String { get set }
    var isbn: String { get set }
    var firstPublicationDate: String { get set }
    var imageBook: String { get set }
    var key: String { get set }
}

struct BookListModel: BookList {
    var key: String
    var name: String
    var isbn: String
    var firstPublicationDate: String
    var imageBook: String
}
