// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let singleBook = try? JSONDecoder().decode(SingleBook.self, from: jsonData)

import Foundation

// MARK: - SingleBook
struct Book: Codable {
    let numFound, start: Int
    let numFoundExact: Bool
    let docs: [Doc]
    let singleBookNumFound: Int
    let q: String
    let offset: JSONNull?
    
    enum CodingKeys: String, CodingKey {
        case numFound, start, numFoundExact, docs
        case singleBookNumFound = "num_found"
        case q, offset
    }
}

// MARK: - Doc
struct Doc: Codable {
    let key: String
    let type: TypeEnum
    let seed: [String]
    let title, titleSuggest, titleSort: String
    let editionCount: Int
    let editionKey, publishDate: [String]
    let publishYear: [Int]?
    let firstPublishYear: Int
    let numberOfPagesMedian: Int?
    let lccn, publishPlace, oclc, contributor: [String]?
    let lcc, ddc: [String]?
    let isbn: [String]?
    let lastModifiedI, ebookCountI: Int
    let ebookAccess: EbookAccess
    let hasFulltext, publicScanB: Bool
    let ia, iaCollection: [String]?
    let iaCollectionS, lendingEditionS, lendingIdentifierS, printdisabledS: String?
    let ratingsAverage, ratingsSortable: Double?
    let ratingsCount, ratingsCount1, ratingsCount2, ratingsCount3: Int?
    let ratingsCount4, ratingsCount5, readinglogCount, wantToReadCount: Int?
    let currentlyReadingCount, alreadyReadCount: Int?
    let coverEditionKey: String?
    let coverI: Int?
    let firstSentence: [String]?
    let publisher: [String]
    let language: [String]?
    let authorKey, authorName: [String]?
    let authorAlternativeName, person, place, subject: [String]?
    let idAlibrisID, idAmazon, idAmazonCAAsin, idAmazonCoUkAsin: [String]?
    let idAmazonDeAsin, idAmazonItAsin, idBodleianOxfordUniversity, idCanadianNationalLibraryArchive: [String]?
    let idDepósitoLegal: [String]?
    let idGoodreads: [String]?
    let idGoogle, idLibrarything, idOverdrive, idPaperbackSwap: [String]?
    let idWikidata, iaBoxID: [String]?
    let publisherFacet: [String]
    let personKey, placeKey, personFacet, subjectFacet: [String]?
    let version: Double
    let placeFacet: [String]?
    let lccSort: String?
    let authorFacet: [String]?
    let subjectKey: [String]?
    let ddcSort: String?
    let idHathiTrust, idYakaboo, iaLoadedID, idBritishLibrary: [String]?
    let idBritishNationalBibliography, idAbebooksDe, time, timeFacet: [String]?
    let timeKey: [String]?
    let subtitle: String?
    
    enum CodingKeys: String, CodingKey {
        case key, type, seed, title
        case titleSuggest = "title_suggest"
        case titleSort = "title_sort"
        case editionCount = "edition_count"
        case editionKey = "edition_key"
        case publishDate = "publish_date"
        case publishYear = "publish_year"
        case firstPublishYear = "first_publish_year"
        case numberOfPagesMedian = "number_of_pages_median"
        case lccn
        case publishPlace = "publish_place"
        case oclc, contributor, lcc, ddc, isbn
        case lastModifiedI = "last_modified_i"
        case ebookCountI = "ebook_count_i"
        case ebookAccess = "ebook_access"
        case hasFulltext = "has_fulltext"
        case publicScanB = "public_scan_b"
        case ia
        case iaCollection = "ia_collection"
        case iaCollectionS = "ia_collection_s"
        case lendingEditionS = "lending_edition_s"
        case lendingIdentifierS = "lending_identifier_s"
        case printdisabledS = "printdisabled_s"
        case ratingsAverage = "ratings_average"
        case ratingsSortable = "ratings_sortable"
        case ratingsCount = "ratings_count"
        case ratingsCount1 = "ratings_count_1"
        case ratingsCount2 = "ratings_count_2"
        case ratingsCount3 = "ratings_count_3"
        case ratingsCount4 = "ratings_count_4"
        case ratingsCount5 = "ratings_count_5"
        case readinglogCount = "readinglog_count"
        case wantToReadCount = "want_to_read_count"
        case currentlyReadingCount = "currently_reading_count"
        case alreadyReadCount = "already_read_count"
        case coverEditionKey = "cover_edition_key"
        case coverI = "cover_i"
        case firstSentence = "first_sentence"
        case publisher, language
        case authorKey = "author_key"
        case authorName = "author_name"
        case authorAlternativeName = "author_alternative_name"
        case person, place, subject
        case idAlibrisID = "id_alibris_id"
        case idAmazon = "id_amazon"
        case idAmazonCAAsin = "id_amazon_ca_asin"
        case idAmazonCoUkAsin = "id_amazon_co_uk_asin"
        case idAmazonDeAsin = "id_amazon_de_asin"
        case idAmazonItAsin = "id_amazon_it_asin"
        case idBodleianOxfordUniversity = "id_bodleian__oxford_university"
        case idCanadianNationalLibraryArchive = "id_canadian_national_library_archive"
        case idDepósitoLegal = "id_depósito_legal"
        case idGoodreads = "id_goodreads"
        case idGoogle = "id_google"
        case idLibrarything = "id_librarything"
        case idOverdrive = "id_overdrive"
        case idPaperbackSwap = "id_paperback_swap"
        case idWikidata = "id_wikidata"
        case iaBoxID = "ia_box_id"
        case publisherFacet = "publisher_facet"
        case personKey = "person_key"
        case placeKey = "place_key"
        case personFacet = "person_facet"
        case subjectFacet = "subject_facet"
        case version = "_version_"
        case placeFacet = "place_facet"
        case lccSort = "lcc_sort"
        case authorFacet = "author_facet"
        case subjectKey = "subject_key"
        case ddcSort = "ddc_sort"
        case idHathiTrust = "id_hathi_trust"
        case idYakaboo = "id_yakaboo"
        case iaLoadedID = "ia_loaded_id"
        case idBritishLibrary = "id_british_library"
        case idBritishNationalBibliography = "id_british_national_bibliography"
        case idAbebooksDe = "id_abebooks_de"
        case time
        case timeFacet = "time_facet"
        case timeKey = "time_key"
        case subtitle
    }
}

enum EbookAccess: String, Codable {
    case borrowable = "borrowable"
    case noEbook = "no_ebook"
    case printdisabled = "printdisabled"
    case publicAccess = "public"
}

enum TypeEnum: String, Codable {
    case work = "work"
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {
    
    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }
    
    public var hashValue: Int {
        return 0
    }
    
    public init() {}
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}
