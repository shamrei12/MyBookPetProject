
import Foundation
import Alamofire


struct BookInfo: Codable {
    let bibKey: String
    let infoUrl: String
    let preview: String
    let previewUrl: String
    let thumbnailUrl: URL?

    enum CodingKeys: String, CodingKey {
        case bibKey = "bib_key"
        case infoUrl = "info_url"
        case preview
        case previewUrl = "preview_url"
        case thumbnailUrl = "thumbnail_url"
    }
}



