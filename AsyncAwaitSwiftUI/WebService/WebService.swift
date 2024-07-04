//
//  WebService.swift
//  AsyncAwaitSwiftUI
//
//  Created by Abdurrahman Karaoluk on 3.07.2024.
//

import Foundation

final class WebService {
    static func getUserData() async throws -> [UserModel] {
        let urlString = "https://api.github.com/users"
        guard let url = URL(string: urlString) else {
            throw ErrorCases.invalidUrl
        }
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse,
              response.statusCode == 200 else {
            throw ErrorCases.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode([UserModel].self, from: data)
        } catch {
            throw ErrorCases.invalidData
        }
    }
}
