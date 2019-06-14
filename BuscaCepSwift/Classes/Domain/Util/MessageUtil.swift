//
//  MessageUtil.swift
//  BuscaCepSwift
//
//  Created by Felipe Almeida on 09/06/19.
//  Copyright © 2019 Felipe Almeida. All rights reserved.
//

import Foundation
import UIKit

class MessageUtil {
    
    static func errorAlert(title: String, msg: String, view: UIViewController){
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { action -> Void in
            view.dismiss(animated: true, completion: nil)
        }))
        view.present(alert, animated: true, completion: nil)
}

}
