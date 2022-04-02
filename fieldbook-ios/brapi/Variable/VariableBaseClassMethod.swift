//
// VariableBaseClassMethod.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VariableBaseClassMethod: Codable {

    /** Additional arbitrary info */
    public var additionalInfo: [String:String]?
    /** Bibliographical reference describing the method.  MIAPPE V1.1 (DM-91) Reference associated to the method - URI/DOI of reference describing the method. */
    public var bibliographicalReference: String?
    /** Method description  MIAPPE V1.1 (DM-90) Method description - Textual description of the method, which may extend a method defined in an external reference with specific parameters, e.g. growth stage, inoculation precise organ (leaf number) */
    public var _description: String?
    /** An array of external reference ids. These are references to this piece of data in an external system. Could be a simple string or a URI. */
    public var externalReferences: [ExternalReferencesInner]?
    /** For computational methods i.e., when the method consists in assessing the trait by computing measurements, write the generic formula used for the calculation */
    public var formula: String?
    /** Method class (examples: \&quot;Measurement\&quot;, \&quot;Counting\&quot;, \&quot;Estimation\&quot;, \&quot;Computation\&quot;, etc.) */
    public var methodClass: String?
    /** Method unique identifier */
    public var methodDbId: String?
    /** Human readable name for the method  MIAPPE V1.1 (DM-88) Method  Name of the method of observation */
    public var methodName: String?
    public var ontologyReference: OntologyReference?

    public init(additionalInfo: [String:String]? = nil, bibliographicalReference: String? = nil, _description: String? = nil, externalReferences: [ExternalReferencesInner]? = nil, formula: String? = nil, methodClass: String? = nil, methodDbId: String? = nil, methodName: String? = nil, ontologyReference: OntologyReference? = nil) {
        self.additionalInfo = additionalInfo
        self.bibliographicalReference = bibliographicalReference
        self._description = _description
        self.externalReferences = externalReferences
        self.formula = formula
        self.methodClass = methodClass
        self.methodDbId = methodDbId
        self.methodName = methodName
        self.ontologyReference = ontologyReference
    }

    public enum CodingKeys: String, CodingKey { 
        case additionalInfo
        case bibliographicalReference
        case _description = "description"
        case externalReferences
        case formula
        case methodClass
        case methodDbId
        case methodName
        case ontologyReference
    }

}
