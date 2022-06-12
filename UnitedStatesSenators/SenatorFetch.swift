//
//  SenatorFetch.swift
//  UnitedStatesSenators
//
//  Created by Hasan Edain on 6/12/22.
//

import Foundation

public enum SenetorError: Error {
    case noUrlString
    case cantFormURL
}

struct SenatorFetcher {
    static let urlString = "https://www.govtrack.us/api/v2/role?current=true&role_type=senator"
    
    static func fetchSenatorsWithContinuation() async -> Senators {
        guard let url = formUrl() else {
            return Senators(objects: [Senator]())
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
//            let dataString = String(data: data, encoding: .utf8)
//            print("\(dataString)")
            
            let senators = try JSONDecoder().decode(Senators.self, from: data)
            
            return senators
        } catch {
            
            print("Error Parsing JSON: \(error.localizedDescription)")
            return Senators(objects: [Senator]())
        }
    }
         
                                                                            
    static func formUrl() -> URL? {
        let url = URL(string: urlString)
        
        return url
    }
}
