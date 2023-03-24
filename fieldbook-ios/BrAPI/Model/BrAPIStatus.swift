//
// Status.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** An array of status messages to convey technical logging information from the server to the client. */

public struct BrAPIStatus: Codable {

    public enum MessageType: String, Codable {
        case debug = "DEBUG"
        case error = "ERROR"
        case warning = "WARNING"
        case info = "INFO"
        
        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            let status = try? container.decode(String.self).uppercased()
            switch status {
            case "DEBUG": self = .debug
            case "ERROR": self = .error
            case "WARNING": self = .warning
            case "INFO": self = .info
            default:
                self = .info
            }
        }
    }
    /** A short message concerning the status of this request/response */
    public var message: String
    /** The logging level for the attached message */
    public var messageType: MessageType

    public init(message: String, messageType: MessageType) {
        self.message = message
        self.messageType = messageType
    }


}
