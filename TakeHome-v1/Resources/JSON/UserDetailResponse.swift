// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let userDetailResponse = try? JSONDecoder().decode(UserDetailResponse.self, from: jsonData)

import Foundation

// MARK: - UserDetailResponse
struct UserDetailResponse: Codable {
    let data: DataClass
    let support: Support
}

// MARK: - DataClass
struct DataClass: Codable {
    let id: Int
    let email, firstName, lastName: String
    let avatar: String

    enum CodingKeys: String, CodingKey {
        case id, email
        case firstName = "first_name"
        case lastName = "last_name"
        case avatar
    }
}

// MARK: - Support
struct Support: Codable {
    let url: String
    let text: String
}
