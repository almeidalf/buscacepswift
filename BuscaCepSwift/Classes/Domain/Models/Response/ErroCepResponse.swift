//
//  ErroCepResponse.swift
//  BuscaCepSwift
//
//  Created by Felipe Almeida on 09/06/19.
//  Copyright © 2019 Felipe Almeida. All rights reserved.
//

import Foundation
import ObjectMapper

class ErroCepResponse: Mappable {
    var readyState : Int?
    var responseText : String?
    var status : Int?
    var statusText : String?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        readyState <- map["readyState"]
        responseText <- map["responseText"]
        status <- map["status"]
        statusText <- map["statusText"]
    }
}
