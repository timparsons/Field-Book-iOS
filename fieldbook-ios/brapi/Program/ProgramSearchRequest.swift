//
// ProgramSearchRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ProgramSearchRequest: Codable {

    /** An abbreviation of a program to search for */
    public var abbreviations: [String]?
    /** Common name for the crop which this program is for */
    public var commonCropNames: [String]?
    /** List of external reference IDs. Could be a simple strings or a URIs. (use with &#x60;externalReferenceSources&#x60; parameter) */
    public var externalReferenceIDs: [String]?
    /** List of identifiers for the source system or database of an external reference (use with &#x60;externalReferenceIDs&#x60; parameter) */
    public var externalReferenceSources: [String]?
    /** The person DbIds of the program leader to search for */
    public var leadPersonDbIds: [String]?
    /** The names of the program leader to search for */
    public var leadPersonNames: [String]?
    /** A program objective to search for */
    public var objectives: [String]?
    /** Which result page is requested. The page indexing starts at 0 (the first page is &#x27;page&#x27;&#x3D; 0). Default is &#x60;0&#x60;. */
    public var page: Int?
    /** The size of the pages to be returned. Default is &#x60;1000&#x60;. */
    public var pageSize: Int?
    /** A program identifier to search for */
    public var programDbIds: [String]?
    /** A name of a program to search for */
    public var programNames: [String]?

    public init(abbreviations: [String]? = nil, commonCropNames: [String]? = nil, externalReferenceIDs: [String]? = nil, externalReferenceSources: [String]? = nil, leadPersonDbIds: [String]? = nil, leadPersonNames: [String]? = nil, objectives: [String]? = nil, page: Int? = nil, pageSize: Int? = nil, programDbIds: [String]? = nil, programNames: [String]? = nil) {
        self.abbreviations = abbreviations
        self.commonCropNames = commonCropNames
        self.externalReferenceIDs = externalReferenceIDs
        self.externalReferenceSources = externalReferenceSources
        self.leadPersonDbIds = leadPersonDbIds
        self.leadPersonNames = leadPersonNames
        self.objectives = objectives
        self.page = page
        self.pageSize = pageSize
        self.programDbIds = programDbIds
        self.programNames = programNames
    }


}
