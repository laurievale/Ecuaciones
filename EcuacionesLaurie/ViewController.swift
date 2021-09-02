//
//  ViewController.swift
//  EcuacionesLaurie
//
//  Created by user194078 on 9/1/21.
//

import UIKit

class ViewController: UIViewController {
    
    let EquationSolver = equationSolver()
    
    @IBOutlet weak var aTextField: UITextField!
    @IBOutlet weak var bTextField: UITextField!
    @IBOutlet weak var cTextField: UITextField!
    @IBOutlet weak var r1TextField: UITextField!
    @IBOutlet weak var r2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func resolver(_ sender: UIButton) {
        r1TextField.text = ""
        r2TextField.text = ""
            
               
        if let A = aTextField.text{
            if !A.isEmpty{
                if let B = bTextField.text{
                    if !B.isEmpty{
                        if let C = cTextField.text{
                            if !C.isEmpty{
                                let rootsValue = EquationSolver.solve(ecuacion: Equation(a: Float16(A)!, b: Float16(B)!, c: Float16(C)!))
                                       

                                r1TextField.text = String(rootsValue.r1)
                                r2TextField.text = String(rootsValue.r2)
                            }
                        }
                    }
                }
            }
        }
        
        
    }
    
}

