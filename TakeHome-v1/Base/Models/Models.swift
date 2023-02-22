//
//  Models.swift
//  TakeHome-v1
//
//  Created by Brian McIntosh on 2/22/23.
//

import Foundation

// MARK: - User
struct User: Codable {
    let id: Int
    let email, firstName, lastName: String
    let avatar: String

//    enum CodingKeys: String, CodingKey {
//        case id, email
//        case firstName = "first_name"
//        case lastName = "last_name"
//        case avatar
//    }
}

// MARK: - Support
struct Support: Codable {
    let url: String
    let text: String
}
