//
//  StaticJSONMapper.swift
//  TakeHome-v1
//
//  Created by Brian McIntosh on 2/22/23.
//

import Foundation

struct StaticJSONMapper {
    
    static func decode<T: Decodable>(file: String, type: T.Type) throws -> T {
        
        guard let path = Bundle.main.path(forResource: file, ofType: "json"),
              let data = FileManager.default.contents(atPath: path) else {
            print("Error getting local json file.")
            //return
            throw MappingError.failedToGetContents
        }
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        //let result = try decoder.decode(T.self, from: data)
        return try decoder.decode(T.self, from: data)
        
        /*
         error here! why? Video @ 11:00 - explanation of why we need to use Generics here
         */
        
    }
}

extension StaticJSONMapper {
    enum MappingError: Error {
        case failedToGetContents
    }
}
