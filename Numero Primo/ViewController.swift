//
//  ViewController.swift
//  Numero Primo
//
//  Created by Iuri Menin on 01/08/16.
//  Copyright © 2016 Iuri Menin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numeroTextField: UITextField!
   
    @IBOutlet weak var labelResultado: UILabel!
    
    @IBAction func buttonIsPrimo(sender: UIButton) {
    
        if let numero = Int(numeroTextField.text!) {
            
            var isPrimo = true
            
            if numero == 1 {
                isPrimo = false
            }
            
            if numero != 1 && numero != 2 {
                for var i = 2; i < numero; i++ {
                    
                    if numero % i == 0 {
                        isPrimo = false;
                    }
                }
            }
            
            if(isPrimo){
                labelResultado.text = "O número \(numero) é primo"
            } else {
                labelResultado.text = "O número \(numero) não é primo"
            }
        } else {
         
            labelResultado.text = "Por favor, insira um número inteiro!"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

