//
//  ErrorCases.swift
//  AsyncAwaitSwiftUI
//
//  Created by Abdurrahman Karaoluk on 3.07.2024.
//

import Foundation

enum ErrorCases: LocalizedError {
    case invalidUrl
    case invalidResponse
    case invalidData
    
    var errorDescription: String? {
        switch self {
        case .invalidUrl:
            return "Invalid URL Found."
        case .invalidResponse:
            return "Invalid Response Found."
        case .invalidData:
            return "Invalid Data Found."

        }
    }
}
