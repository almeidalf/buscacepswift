//
//  InfoViewController.swift
//  BuscaCepSwift
//
//  Created by Felipe Almeida on 09/06/19.
//  Copyright © 2019 Felipe Almeida. All rights reserved.
//

import Foundation
import UIKit

class InfoViewController: UIViewController {
    
    var Rua : String = ""
    var Bairro : String = ""
    var Cidade : String = ""
    var Estado : String = ""
    
    
    @IBOutlet weak var lblRua: UILabel!
    @IBOutlet weak var lblBairro: UILabel!
    @IBOutlet weak var lblCidade: UILabel!
    @IBOutlet weak var lblEstado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblRua.text = Rua
        lblBairro.text = Bairro
        lblCidade.text = Cidade
        lblEstado.text = Estado
        
    }
}
