//
// Observation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Observation: Codable {

    /** Additional arbitrary info */
    public var additionalInfo: [String:String]?
    /** The name or identifier of the entity which collected the observation */
    public var collector: String?
    /** An array of external reference ids. These are references to this piece of data in an external system. Could be a simple string or a URI. */
    public var externalReferences: [ExternalReferencesInner]?
    /** The ID which uniquely identifies a germplasm */
    public var germplasmDbId: String?
    /** Name of the germplasm. It can be the preferred name and does not have to be unique. */
    public var germplasmName: String?
    /** The ID which uniquely identifies an observation */
    public var observationDbId: String?
    /** The date and time when this observation was made */
    public var observationTimeStamp: Date?
    /** The ID which uniquely identifies an observation unit */
    public var observationUnitDbId: String?
    /** A human readable name for an observation unit */
    public var observationUnitName: String?
    /** The ID which uniquely identifies an observation variable */
    public var observationVariableDbId: String?
    /** A human readable name for an observation variable */
    public var observationVariableName: String?
    public var season: Season?
    /** The ID which uniquely identifies a study within the given database server */
    public var studyDbId: String?
    /** The name or id of the user who uploaded the observation to the database system */
    public var uploadedBy: String?
    /** The value of the data collected as an observation */
    public var value: String?

    public init(additionalInfo: [String:String]? = nil, collector: String? = nil, externalReferences: [ExternalReferencesInner]? = nil, germplasmDbId: String? = nil, germplasmName: String? = nil, observationDbId: String? = nil, observationTimeStamp: Date? = nil, observationUnitDbId: String? = nil, observationUnitName: String? = nil, observationVariableDbId: String? = nil, observationVariableName: String? = nil, season: Season? = nil, studyDbId: String? = nil, uploadedBy: String? = nil, value: String? = nil) {
        self.additionalInfo = additionalInfo
        self.collector = collector
        self.externalReferences = externalReferences
        self.germplasmDbId = germplasmDbId
        self.germplasmName = germplasmName
        self.observationDbId = observationDbId
        self.observationTimeStamp = observationTimeStamp
        self.observationUnitDbId = observationUnitDbId
        self.observationUnitName = observationUnitName
        self.observationVariableDbId = observationVariableDbId
        self.observationVariableName = observationVariableName
        self.season = season
        self.studyDbId = studyDbId
        self.uploadedBy = uploadedBy
        self.value = value
    }


}
