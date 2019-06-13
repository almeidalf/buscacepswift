//
//  CepInfoBean.swift
//  BuscaCepSwift
//
//  Created by Felipe Almeida on 09/06/19.
//  Copyright © 2019 Felipe Almeida. All rights reserved.
//

import Foundation
import ObjectMapper

class CepInfoBean : Mappable {
    
    var area_km2: String?
    var codigo_ibge : String?
    var nome : String?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        area_km2 <- map["area_km2"]
        codigo_ibge <- map["codigo_ibge"]
        nome <- map["nome"]
    }
}
