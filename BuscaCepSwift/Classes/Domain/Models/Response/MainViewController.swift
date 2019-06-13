//
//  MainViewController.swift
//  BuscaCepSwift
//
//  Created by Felipe Almeida on 09/06/19.
//  Copyright © 2019 Felipe Almeida. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtCEP: UITextField!
    
    //Var
    var cepVerdadeiro = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.txtCEP.delegate = self
        self.txtCEP.addTarget(self, action: #selector(textFieldBuscaCEPDidChange(textField:)), for: UIControl.Event.editingChanged)
        
    }
    
    @objc func textFieldBuscaCEPDidChange(textField: UITextField) {
        if(txtCEP.text?.count == 8){
            cepVerdadeiro = true
        }else if (txtCEP.text!.count < 8){
            cepVerdadeiro = false
        }
    }
    
    func buscaCepAPI(){
        let request = SendCepRequest()
        request.cep = txtCEP.text!
        
        Singleton.sharedInstance.showActivityIndicatory(view: self.view)
        
        let onSuccess = { (item: ListCEPResponse) -> Void  in
            Singleton.sharedInstance.stopActivityIndicatory()
            let myVC = self.storyboard?.instantiateViewController(withIdentifier: "InfoViewController") as! InfoViewController
            myVC.Rua = item.street!
            myVC.Bairro = item.neighborhood!
            myVC.Cidade = item.city!
            myVC.Estado = item.state_info!.nome!
            self.navigationController?.pushViewController(myVC, animated: true)
        }
        
        let onError = { (item: ErroCepResponse) -> Void in
            // Loading hide
            Singleton.sharedInstance.stopActivityIndicatory()
            
            MessageUtil.errorAlert(title: "Oops!", msg: "Verifique se este CEP digitado e válido!", view: self)
        }
        WS.getBuscaCep(recebeCep: request.cep!, onSuccess: onSuccess, onError: onError)
    }
    
    
    @IBAction func BuscaCep(_ sender: Any) {
        buscaCepAPI()
    }
}
