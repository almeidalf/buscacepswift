//
//  SendCepRequest.swift
//  BuscaCepSwift
//
//  Created by Felipe Almeida on 09/06/19.
//  Copyright © 2019 Felipe Almeida. All rights reserved.
//

import Foundation
import ObjectMapper

class SendCepRequest: Mappable {
    
    var cep : String?
    
    required convenience init?(map: Map) {
        self.init(map: map)
    }
    
    func mapping(map: Map) {
        cep <- map["cep"]
    }
}
