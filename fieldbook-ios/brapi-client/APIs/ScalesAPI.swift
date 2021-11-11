//
// ScalesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class ScalesAPI {
    /**
     Get the Scales

     - parameter scaleDbId: (query) The unique identifier for a scale (optional)
     - parameter observationVariableDbId: (query) The unique identifier for an observation variable (optional)
     - parameter externalReferenceID: (query) An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) (optional)
     - parameter externalReferenceSource: (query) An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) (optional)
     - parameter page: (query) Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#x27;page&#x27;&#x3D; 0). Default is &#x60;0&#x60;. (optional)
     - parameter pageSize: (query) The size of the pages to be returned. Default is &#x60;1000&#x60;. (optional)
     - parameter authorization: (header) HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func scalesGet(scaleDbId: String? = nil, observationVariableDbId: String? = nil, externalReferenceID: String? = nil, externalReferenceSource: String? = nil, page: Int? = nil, pageSize: Int? = nil, authorization: String? = nil, completion: @escaping ((_ data: ScaleListResponse?,_ error: Error?) -> Void)) {
        scalesGetWithRequestBuilder(scaleDbId: scaleDbId, observationVariableDbId: observationVariableDbId, externalReferenceID: externalReferenceID, externalReferenceSource: externalReferenceSource, page: page, pageSize: pageSize, authorization: authorization).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get the Scales
     - GET /scales

     - :
       - type: http
       - name: AuthorizationToken
     - examples: [{contentType=application/json, example={
  "result" : {
    "data" : [ {
      "externalReferences" : [ {
        "referenceID" : "doi:10.155454/12341234",
        "referenceSource" : "DOI"
      }, {
        "referenceID" : "http://purl.obolibrary.org/obo/ro.owl",
        "referenceSource" : "OBO Library"
      }, {
        "referenceID" : "75a50e76",
        "referenceSource" : "Remote Data Collection Upload Tool"
      } ],
      "decimalPlaces" : 2,
      "dataType" : "Numerical",
      "additionalInfo" : {
        "key" : "additionalInfo"
      },
      "scaleDbId" : "af730171",
      "scaleName" : "Meters",
      "ontologyReference" : {
        "ontologyDbId" : "6b071868",
        "ontologyName" : "The Crop Ontology",
        "documentationLinks" : [ {
          "type" : "OBO",
          "URL" : "http://purl.obolibrary.org/obo/ro.owl"
        }, {
          "type" : "OBO",
          "URL" : "http://purl.obolibrary.org/obo/ro.owl"
        } ],
        "version" : "7.2.3"
      },
      "validValues" : {
        "min" : 2,
        "max" : 9999,
        "categories" : [ {
          "label" : "low",
          "value" : "0"
        }, {
          "label" : "medium",
          "value" : "5"
        }, {
          "label" : "high",
          "value" : "10"
        } ]
      }
    }, {
      "externalReferences" : [ {
        "referenceID" : "doi:10.155454/12341234",
        "referenceSource" : "DOI"
      }, {
        "referenceID" : "http://purl.obolibrary.org/obo/ro.owl",
        "referenceSource" : "OBO Library"
      }, {
        "referenceID" : "75a50e76",
        "referenceSource" : "Remote Data Collection Upload Tool"
      } ],
      "decimalPlaces" : 2,
      "dataType" : "Numerical",
      "additionalInfo" : {
        "key" : "additionalInfo"
      },
      "scaleDbId" : "af730171",
      "scaleName" : "Meters",
      "ontologyReference" : {
        "ontologyDbId" : "6b071868",
        "ontologyName" : "The Crop Ontology",
        "documentationLinks" : [ {
          "type" : "OBO",
          "URL" : "http://purl.obolibrary.org/obo/ro.owl"
        }, {
          "type" : "OBO",
          "URL" : "http://purl.obolibrary.org/obo/ro.owl"
        } ],
        "version" : "7.2.3"
      },
      "validValues" : {
        "min" : 2,
        "max" : 9999,
        "categories" : [ {
          "label" : "low",
          "value" : "0"
        }, {
          "label" : "medium",
          "value" : "5"
        }, {
          "label" : "high",
          "value" : "10"
        } ]
      }
    } ]
  },
  "metadata" : {
    "pagination" : {
      "totalPages" : 1,
      "pageSize" : 1000,
      "currentPage" : 0,
      "totalCount" : 10
    },
    "datafiles" : [ {
      "fileDescription" : "This is an Excel data file",
      "fileName" : "datafile.xlsx",
      "fileSize" : 4398,
      "fileMD5Hash" : "c2365e900c81a89cf74d83dab60df146",
      "fileURL" : "https://wiki.brapi.org/examples/datafile.xlsx",
      "fileType" : "application/vnd.ms-excel"
    }, {
      "fileDescription" : "This is an Excel data file",
      "fileName" : "datafile.xlsx",
      "fileSize" : 4398,
      "fileMD5Hash" : "c2365e900c81a89cf74d83dab60df146",
      "fileURL" : "https://wiki.brapi.org/examples/datafile.xlsx",
      "fileType" : "application/vnd.ms-excel"
    } ],
    "status" : [ {
      "messageType" : "INFO",
      "message" : "Request accepted, response successful"
    }, {
      "messageType" : "INFO",
      "message" : "Request accepted, response successful"
    } ]
  },
  "@context" : [ "https://brapi.org/jsonld/context/metadata.jsonld" ]
}}]
     - parameter scaleDbId: (query) The unique identifier for a scale (optional)
     - parameter observationVariableDbId: (query) The unique identifier for an observation variable (optional)
     - parameter externalReferenceID: (query) An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) (optional)
     - parameter externalReferenceSource: (query) An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) (optional)
     - parameter page: (query) Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#x27;page&#x27;&#x3D; 0). Default is &#x60;0&#x60;. (optional)
     - parameter pageSize: (query) The size of the pages to be returned. Default is &#x60;1000&#x60;. (optional)
     - parameter authorization: (header) HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; (optional)

     - returns: RequestBuilder<ScaleListResponse> 
     */
    open class func scalesGetWithRequestBuilder(scaleDbId: String? = nil, observationVariableDbId: String? = nil, externalReferenceID: String? = nil, externalReferenceSource: String? = nil, page: Int? = nil, pageSize: Int? = nil, authorization: String? = nil) -> RequestBuilder<ScaleListResponse> {
        let path = "/scales"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "scaleDbId": scaleDbId, 
                        "observationVariableDbId": observationVariableDbId, 
                        "externalReferenceID": externalReferenceID, 
                        "externalReferenceSource": externalReferenceSource, 
                        "page": page?.encodeToJSON(), 
                        "pageSize": pageSize?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
                        "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ScaleListResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }
    /**
     Add new Scales

     - parameter body: (body)  (optional)
     - parameter authorization: (header) HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func scalesPost(body: [ScaleNewRequest]? = nil, authorization: String? = nil, completion: @escaping ((_ data: ScaleListResponse?,_ error: Error?) -> Void)) {
        scalesPostWithRequestBuilder(body: body, authorization: authorization).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add new Scales
     - POST /scales

     - :
       - type: http
       - name: AuthorizationToken
     - examples: [{contentType=application/json, example={
  "result" : {
    "data" : [ {
      "externalReferences" : [ {
        "referenceID" : "doi:10.155454/12341234",
        "referenceSource" : "DOI"
      }, {
        "referenceID" : "http://purl.obolibrary.org/obo/ro.owl",
        "referenceSource" : "OBO Library"
      }, {
        "referenceID" : "75a50e76",
        "referenceSource" : "Remote Data Collection Upload Tool"
      } ],
      "decimalPlaces" : 2,
      "dataType" : "Numerical",
      "additionalInfo" : {
        "key" : "additionalInfo"
      },
      "scaleDbId" : "af730171",
      "scaleName" : "Meters",
      "ontologyReference" : {
        "ontologyDbId" : "6b071868",
        "ontologyName" : "The Crop Ontology",
        "documentationLinks" : [ {
          "type" : "OBO",
          "URL" : "http://purl.obolibrary.org/obo/ro.owl"
        }, {
          "type" : "OBO",
          "URL" : "http://purl.obolibrary.org/obo/ro.owl"
        } ],
        "version" : "7.2.3"
      },
      "validValues" : {
        "min" : 2,
        "max" : 9999,
        "categories" : [ {
          "label" : "low",
          "value" : "0"
        }, {
          "label" : "medium",
          "value" : "5"
        }, {
          "label" : "high",
          "value" : "10"
        } ]
      }
    }, {
      "externalReferences" : [ {
        "referenceID" : "doi:10.155454/12341234",
        "referenceSource" : "DOI"
      }, {
        "referenceID" : "http://purl.obolibrary.org/obo/ro.owl",
        "referenceSource" : "OBO Library"
      }, {
        "referenceID" : "75a50e76",
        "referenceSource" : "Remote Data Collection Upload Tool"
      } ],
      "decimalPlaces" : 2,
      "dataType" : "Numerical",
      "additionalInfo" : {
        "key" : "additionalInfo"
      },
      "scaleDbId" : "af730171",
      "scaleName" : "Meters",
      "ontologyReference" : {
        "ontologyDbId" : "6b071868",
        "ontologyName" : "The Crop Ontology",
        "documentationLinks" : [ {
          "type" : "OBO",
          "URL" : "http://purl.obolibrary.org/obo/ro.owl"
        }, {
          "type" : "OBO",
          "URL" : "http://purl.obolibrary.org/obo/ro.owl"
        } ],
        "version" : "7.2.3"
      },
      "validValues" : {
        "min" : 2,
        "max" : 9999,
        "categories" : [ {
          "label" : "low",
          "value" : "0"
        }, {
          "label" : "medium",
          "value" : "5"
        }, {
          "label" : "high",
          "value" : "10"
        } ]
      }
    } ]
  },
  "metadata" : {
    "pagination" : {
      "totalPages" : 1,
      "pageSize" : 1000,
      "currentPage" : 0,
      "totalCount" : 10
    },
    "datafiles" : [ {
      "fileDescription" : "This is an Excel data file",
      "fileName" : "datafile.xlsx",
      "fileSize" : 4398,
      "fileMD5Hash" : "c2365e900c81a89cf74d83dab60df146",
      "fileURL" : "https://wiki.brapi.org/examples/datafile.xlsx",
      "fileType" : "application/vnd.ms-excel"
    }, {
      "fileDescription" : "This is an Excel data file",
      "fileName" : "datafile.xlsx",
      "fileSize" : 4398,
      "fileMD5Hash" : "c2365e900c81a89cf74d83dab60df146",
      "fileURL" : "https://wiki.brapi.org/examples/datafile.xlsx",
      "fileType" : "application/vnd.ms-excel"
    } ],
    "status" : [ {
      "messageType" : "INFO",
      "message" : "Request accepted, response successful"
    }, {
      "messageType" : "INFO",
      "message" : "Request accepted, response successful"
    } ]
  },
  "@context" : [ "https://brapi.org/jsonld/context/metadata.jsonld" ]
}}]
     - parameter body: (body)  (optional)
     - parameter authorization: (header) HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; (optional)

     - returns: RequestBuilder<ScaleListResponse> 
     */
    open class func scalesPostWithRequestBuilder(body: [ScaleNewRequest]? = nil, authorization: String? = nil) -> RequestBuilder<ScaleListResponse> {
        let path = "/scales"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
                        "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ScaleListResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }
    /**
     Get the details of a specific Scale

     - parameter scaleDbId: (path) Id of the scale to retrieve details of. 
     - parameter authorization: (header) HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func scalesScaleDbIdGet(scaleDbId: String, authorization: String? = nil, completion: @escaping ((_ data: ScaleSingleResponse?,_ error: Error?) -> Void)) {
        scalesScaleDbIdGetWithRequestBuilder(scaleDbId: scaleDbId, authorization: authorization).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get the details of a specific Scale
     - GET /scales/{scaleDbId}

     - :
       - type: http
       - name: AuthorizationToken
     - examples: [{contentType=application/json, example={
  "result" : {
    "externalReferences" : [ {
      "referenceID" : "doi:10.155454/12341234",
      "referenceSource" : "DOI"
    }, {
      "referenceID" : "http://purl.obolibrary.org/obo/ro.owl",
      "referenceSource" : "OBO Library"
    }, {
      "referenceID" : "75a50e76",
      "referenceSource" : "Remote Data Collection Upload Tool"
    } ],
    "decimalPlaces" : 2,
    "dataType" : "Numerical",
    "additionalInfo" : {
      "key" : "additionalInfo"
    },
    "scaleDbId" : "af730171",
    "scaleName" : "Meters",
    "ontologyReference" : {
      "ontologyDbId" : "6b071868",
      "ontologyName" : "The Crop Ontology",
      "documentationLinks" : [ {
        "type" : "OBO",
        "URL" : "http://purl.obolibrary.org/obo/ro.owl"
      }, {
        "type" : "OBO",
        "URL" : "http://purl.obolibrary.org/obo/ro.owl"
      } ],
      "version" : "7.2.3"
    },
    "validValues" : {
      "min" : 2,
      "max" : 9999,
      "categories" : [ {
        "label" : "low",
        "value" : "0"
      }, {
        "label" : "medium",
        "value" : "5"
      }, {
        "label" : "high",
        "value" : "10"
      } ]
    }
  },
  "metadata" : {
    "pagination" : {
      "totalPages" : 1,
      "pageSize" : 1000,
      "currentPage" : 0,
      "totalCount" : 10
    },
    "datafiles" : [ {
      "fileDescription" : "This is an Excel data file",
      "fileName" : "datafile.xlsx",
      "fileSize" : 4398,
      "fileMD5Hash" : "c2365e900c81a89cf74d83dab60df146",
      "fileURL" : "https://wiki.brapi.org/examples/datafile.xlsx",
      "fileType" : "application/vnd.ms-excel"
    }, {
      "fileDescription" : "This is an Excel data file",
      "fileName" : "datafile.xlsx",
      "fileSize" : 4398,
      "fileMD5Hash" : "c2365e900c81a89cf74d83dab60df146",
      "fileURL" : "https://wiki.brapi.org/examples/datafile.xlsx",
      "fileType" : "application/vnd.ms-excel"
    } ],
    "status" : [ {
      "messageType" : "INFO",
      "message" : "Request accepted, response successful"
    }, {
      "messageType" : "INFO",
      "message" : "Request accepted, response successful"
    } ]
  },
  "@context" : [ "https://brapi.org/jsonld/context/metadata.jsonld" ]
}}]
     - parameter scaleDbId: (path) Id of the scale to retrieve details of. 
     - parameter authorization: (header) HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; (optional)

     - returns: RequestBuilder<ScaleSingleResponse> 
     */
    open class func scalesScaleDbIdGetWithRequestBuilder(scaleDbId: String, authorization: String? = nil) -> RequestBuilder<ScaleSingleResponse> {
        var path = "/scales/{scaleDbId}"
        let scaleDbIdPreEscape = "\(scaleDbId)"
        let scaleDbIdPostEscape = scaleDbIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{scaleDbId}", with: scaleDbIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
                        "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ScaleSingleResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }
    /**
     Update an existing Scale

     - parameter scaleDbId: (path) Id of the scale to retrieve details of. 
     - parameter body: (body)  (optional)
     - parameter authorization: (header) HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func scalesScaleDbIdPut(scaleDbId: String, body: ScaleBaseClass? = nil, authorization: String? = nil, completion: @escaping ((_ data: ScaleSingleResponse?,_ error: Error?) -> Void)) {
        scalesScaleDbIdPutWithRequestBuilder(scaleDbId: scaleDbId, body: body, authorization: authorization).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update an existing Scale
     - PUT /scales/{scaleDbId}

     - :
       - type: http
       - name: AuthorizationToken
     - examples: [{contentType=application/json, example={
  "result" : {
    "externalReferences" : [ {
      "referenceID" : "doi:10.155454/12341234",
      "referenceSource" : "DOI"
    }, {
      "referenceID" : "http://purl.obolibrary.org/obo/ro.owl",
      "referenceSource" : "OBO Library"
    }, {
      "referenceID" : "75a50e76",
      "referenceSource" : "Remote Data Collection Upload Tool"
    } ],
    "decimalPlaces" : 2,
    "dataType" : "Numerical",
    "additionalInfo" : {
      "key" : "additionalInfo"
    },
    "scaleDbId" : "af730171",
    "scaleName" : "Meters",
    "ontologyReference" : {
      "ontologyDbId" : "6b071868",
      "ontologyName" : "The Crop Ontology",
      "documentationLinks" : [ {
        "type" : "OBO",
        "URL" : "http://purl.obolibrary.org/obo/ro.owl"
      }, {
        "type" : "OBO",
        "URL" : "http://purl.obolibrary.org/obo/ro.owl"
      } ],
      "version" : "7.2.3"
    },
    "validValues" : {
      "min" : 2,
      "max" : 9999,
      "categories" : [ {
        "label" : "low",
        "value" : "0"
      }, {
        "label" : "medium",
        "value" : "5"
      }, {
        "label" : "high",
        "value" : "10"
      } ]
    }
  },
  "metadata" : {
    "pagination" : {
      "totalPages" : 1,
      "pageSize" : 1000,
      "currentPage" : 0,
      "totalCount" : 10
    },
    "datafiles" : [ {
      "fileDescription" : "This is an Excel data file",
      "fileName" : "datafile.xlsx",
      "fileSize" : 4398,
      "fileMD5Hash" : "c2365e900c81a89cf74d83dab60df146",
      "fileURL" : "https://wiki.brapi.org/examples/datafile.xlsx",
      "fileType" : "application/vnd.ms-excel"
    }, {
      "fileDescription" : "This is an Excel data file",
      "fileName" : "datafile.xlsx",
      "fileSize" : 4398,
      "fileMD5Hash" : "c2365e900c81a89cf74d83dab60df146",
      "fileURL" : "https://wiki.brapi.org/examples/datafile.xlsx",
      "fileType" : "application/vnd.ms-excel"
    } ],
    "status" : [ {
      "messageType" : "INFO",
      "message" : "Request accepted, response successful"
    }, {
      "messageType" : "INFO",
      "message" : "Request accepted, response successful"
    } ]
  },
  "@context" : [ "https://brapi.org/jsonld/context/metadata.jsonld" ]
}}]
     - parameter scaleDbId: (path) Id of the scale to retrieve details of. 
     - parameter body: (body)  (optional)
     - parameter authorization: (header) HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; (optional)

     - returns: RequestBuilder<ScaleSingleResponse> 
     */
    open class func scalesScaleDbIdPutWithRequestBuilder(scaleDbId: String, body: ScaleBaseClass? = nil, authorization: String? = nil) -> RequestBuilder<ScaleSingleResponse> {
        var path = "/scales/{scaleDbId}"
        let scaleDbIdPreEscape = "\(scaleDbId)"
        let scaleDbIdPostEscape = scaleDbIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{scaleDbId}", with: scaleDbIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
                        "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ScaleSingleResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }
}