//
// LocationSingleResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct BrAPILocationSingleResponse: Codable {

    public var context: BrAPIContext?
    public var metadata: BrAPIMetadata
    public var result: BrAPILocation

    public init(context: BrAPIContext? = nil, metadata: BrAPIMetadata, result: BrAPILocation) {
        self.context = context
        self.metadata = metadata
        self.result = result
    }

    public enum CodingKeys: String, CodingKey { 
        case context = "@context"
        case metadata
        case result
    }

}