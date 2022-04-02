//
// ObservationVariableNewRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ObservationVariableNewRequest: Codable {

    /** Additional arbitrary info */
    public var additionalInfo: [String:String]?
    /** Crop name (examples: \&quot;Maize\&quot;, \&quot;Wheat\&quot;) */
    public var commonCropName: String?
    /** Indication of how trait is routinely used. (examples: [\&quot;Trial evaluation\&quot;, \&quot;Nursery evaluation\&quot;]) */
    public var contextOfUse: [String]?
    /** Variable default value. (examples: \&quot;red\&quot;, \&quot;2.3\&quot;, etc.) */
    public var defaultValue: String?
    /** A URL to the human readable documentation of this object */
    public var documentationURL: String?
    /** An array of external reference ids. These are references to this piece of data in an external system. Could be a simple string or a URI. */
    public var externalReferences: [ExternalReferencesInner]?
    /** Growth stage at which measurement is made (examples: \&quot;flowering\&quot;) */
    public var growthStage: String?
    /** Name of institution submitting the variable */
    public var institution: String?
    /** 2 letter ISO 639-1 code for the language of submission of the variable. */
    public var language: String?
    public var method: Method?
    /** Variable name (usually a short name) */
    public var observationVariableName: String?
    public var ontologyReference: OntologyReference?
    public var scale: Scale?
    /** Name of scientist submitting the variable. */
    public var scientist: String?
    /** Variable status. (examples: \&quot;recommended\&quot;, \&quot;obsolete\&quot;, \&quot;legacy\&quot;, etc.) */
    public var status: String?
    /** Timestamp when the Variable was added (ISO 8601) */
    public var submissionTimestamp: Date?
    /** Other variable names */
    public var synonyms: [String]?
    public var trait: Trait?

    public init(additionalInfo: [String:String]? = nil, commonCropName: String? = nil, contextOfUse: [String]? = nil, defaultValue: String? = nil, documentationURL: String? = nil, externalReferences: [ExternalReferencesInner]? = nil, growthStage: String? = nil, institution: String? = nil, language: String? = nil, method: Method? = nil, observationVariableName: String? = nil, ontologyReference: OntologyReference? = nil, scale: Scale? = nil, scientist: String? = nil, status: String? = nil, submissionTimestamp: Date? = nil, synonyms: [String]? = nil, trait: Trait? = nil) {
        self.additionalInfo = additionalInfo
        self.commonCropName = commonCropName
        self.contextOfUse = contextOfUse
        self.defaultValue = defaultValue
        self.documentationURL = documentationURL
        self.externalReferences = externalReferences
        self.growthStage = growthStage
        self.institution = institution
        self.language = language
        self.method = method
        self.observationVariableName = observationVariableName
        self.ontologyReference = ontologyReference
        self.scale = scale
        self.scientist = scientist
        self.status = status
        self.submissionTimestamp = submissionTimestamp
        self.synonyms = synonyms
        self.trait = trait
    }


}
