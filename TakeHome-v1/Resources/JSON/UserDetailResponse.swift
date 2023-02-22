// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let userDetailResponse = try? JSONDecoder().decode(UserDetailResponse.self, from: jsonData)

import Foundation

// MARK: - UserDetailResponse
struct UserDetailResponse: Codable {
    let data: User
    let support: Support
}

/*
 NOTE the User and Support models are exactly the same as in the response for a list of Users
 */


