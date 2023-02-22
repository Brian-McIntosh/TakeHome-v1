
// MARK: - UsersResponse
struct UsersResponse: Codable {
    let page, perPage, total, totalPages: Int
    let data: [User]
    let support: Support
    
    // automatically enable converting from snake_casing to camelCasing

//    enum CodingKeys: String, CodingKey {
//        case page
//        case perPage = "per_page"
//        case total
//        case totalPages = "total_pages"
//        case data, support
//    }
}
