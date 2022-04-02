//
// GeoJSON.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** One geometry as defined by GeoJSON (RFC 7946). All coordinates are decimal values on the WGS84 geographic coordinate reference system.  Copied from RFC 7946 Section 3.1.1  A position is an array of numbers. There MUST be two or more elements. The first two elements are longitude and latitude, or easting and northing, precisely in that order and using decimal numbers. Altitude or elevation MAY be included as an optional third element. */

public struct GeoJSON: Codable {

    /** A geometry as defined by GeoJSON (RFC 7946). In this context, only Point or Polygon geometry are allowed. */
    public var geometry: OneOfGeoJSONGeometry?
    /** The literal string \&quot;Feature\&quot; */
    public var type: String?

    public init(geometry: OneOfGeoJSONGeometry? = nil, type: String? = nil) {
        self.geometry = geometry
        self.type = type
    }


}
