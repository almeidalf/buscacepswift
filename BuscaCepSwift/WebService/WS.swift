//
//  WS.swift
//  BuscaCepSwift
//
//  Created by Felipe Almeida on 09/06/19.
//  Copyright © 2019 Felipe Almeida. All rights reserved.
//

import Foundation
import AlamofireObjectMapper
import Alamofire

class WS {


class func getBuscaCep(recebeCep:String, onSuccess: @escaping (_ status: ListCEPResponse) -> Void, onError: @escaping (_ status: ErroCepResponse) -> Void ){
    //HTTPHeaders
    let url = (ServicoParametro.SERVICE_GET_CEP as NSString).replacingOccurrences(of: "PARAM", with: recebeCep)
    print(url)
    Alamofire.request(url, method: .get, encoding: JSONEncoding.default).responseObject {(response: DataResponse<ListCEPResponse>) in
        if (response.response?.statusCode == 200) && (response.result.isSuccess){
            onSuccess(response.result.value!)
        }else if (response.response?.statusCode == 404) {
            let errorResponse = ErroCepResponse()
            onError(errorResponse)
        }
        else if (response.response?.statusCode == 405) {
            let errorResponse = ErroCepResponse()
            onError(errorResponse)
        }else {
            let errorResponse = ErroCepResponse()
            onError(errorResponse)
        }
    }
}

}
