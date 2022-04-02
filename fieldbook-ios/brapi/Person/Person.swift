//
// Person.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Person: Codable {

    /** Additional arbitrary info */
    public var additionalInfo: [String:String]?
    /** description of this person */
    public var _description: String?
    /** email address for this person */
    public var emailAddress: String?
    /** An array of external reference ids. These are references to this piece of data in an external system. Could be a simple string or a URI. */
    public var externalReferences: [ExternalReferencesInner]?
    /** Persons first name */
    public var firstName: String?
    /** Persons last name */
    public var lastName: String?
    /** physical address of this person */
    public var mailingAddress: String?
    /** Persons middle name */
    public var middleName: String?
    /** Unique ID for a person */
    public var personDbId: String?
    /** phone number of this person */
    public var phoneNumber: String?
    /** A systems user ID associated with this person. Different from personDbId because you could have a person who is not a user of the system. */
    public var userID: String?

    public init(additionalInfo: [String:String]? = nil, _description: String? = nil, emailAddress: String? = nil, externalReferences: [ExternalReferencesInner]? = nil, firstName: String? = nil, lastName: String? = nil, mailingAddress: String? = nil, middleName: String? = nil, personDbId: String? = nil, phoneNumber: String? = nil, userID: String? = nil) {
        self.additionalInfo = additionalInfo
        self._description = _description
        self.emailAddress = emailAddress
        self.externalReferences = externalReferences
        self.firstName = firstName
        self.lastName = lastName
        self.mailingAddress = mailingAddress
        self.middleName = middleName
        self.personDbId = personDbId
        self.phoneNumber = phoneNumber
        self.userID = userID
    }

    public enum CodingKeys: String, CodingKey { 
        case additionalInfo
        case _description = "description"
        case emailAddress
        case externalReferences
        case firstName
        case lastName
        case mailingAddress
        case middleName
        case personDbId
        case phoneNumber
        case userID
    }

}
