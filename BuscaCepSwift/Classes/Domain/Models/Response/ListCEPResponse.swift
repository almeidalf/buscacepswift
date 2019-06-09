//
//  ListCEPResponse.swift
//  BuscaCepSwift
//
//  Created by Felipe Almeida on 09/06/19.
//  Copyright © 2019 Felipe Almeida. All rights reserved.
//

import Foundation
import ObjectMapper

class ListCEPResponse: Mappable {
    
    var neighborhood : String?
    var city : String?
    var street : String?
    var state_info : CepInfoBean?
    
    convenience required init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        neighborhood <- map["bairro"]
        city <- map["cidade"]
        street <- map["logradouro"]
        state_info <- map["estado_info"]
    }
}
