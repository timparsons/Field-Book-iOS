//
// ProgramNewRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ProgramNewRequest: Codable {

    /** An abbreviation which represents this program */
    public var abbreviation: String?
    /** Additional arbitrary info */
    public var additionalInfo: [String:String]?
    /** Common name for the crop which this program is for */
    public var commonCropName: String?
    /** A URL to the human readable documentation of this object */
    public var documentationURL: String?
    /** An array of external reference ids. These are references to this piece of data in an external system. Could be a simple string or a URI. */
    public var externalReferences: [ExternalReferencesInner]?
    /** The unique identifier of the program leader */
    public var leadPersonDbId: String?
    /** The name of the program leader */
    public var leadPersonName: String?
    /** The primary objective of the program */
    public var objective: String?
    /** Human readable name of the program */
    public var programName: String?

    public init(abbreviation: String? = nil, additionalInfo: [String:String]? = nil, commonCropName: String? = nil, documentationURL: String? = nil, externalReferences: [ExternalReferencesInner]? = nil, leadPersonDbId: String? = nil, leadPersonName: String? = nil, objective: String? = nil, programName: String? = nil) {
        self.abbreviation = abbreviation
        self.additionalInfo = additionalInfo
        self.commonCropName = commonCropName
        self.documentationURL = documentationURL
        self.externalReferences = externalReferences
        self.leadPersonDbId = leadPersonDbId
        self.leadPersonName = leadPersonName
        self.objective = objective
        self.programName = programName
    }


}
