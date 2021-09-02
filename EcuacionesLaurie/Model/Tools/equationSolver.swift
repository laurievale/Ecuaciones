//
//  equationSolver.swift
//  EcuacionesLaurie
//
//  Created by user194078 on 9/2/21.
//

import Foundation

public class equationSolver {
    public func solve(ecuacion: Equation) -> Result {
        
        
        let d = (ecuacion.b * ecuacion.b) - 4.0 * ecuacion.a * ecuacion.c
        
        if(ecuacion.a == 0){
            return Result(r1: 0.0, r2: 1600.0, imaginary: true, d: 4.0)
        }
        
        if(d == 0){
            let x1 = -ecuacion.b / (2 * ecuacion.a)
            return Result(r1: x1, r2: x1, imaginary: false, d: d)
        }else if(d > 0){
            let x1 = (-ecuacion.b + sqrt(d)) / (2.0 * ecuacion.a)
            let x2 = (-ecuacion.b - sqrt(d)) / (2.0 * ecuacion.a)
            return Result(r1: x1, r2: x2, imaginary: false, d: d)
        }else{
            let positive = sqrt(abs(d))
            let newD = positive / (2.0 * ecuacion.a)
            let x1 = (-ecuacion.b) / (2.0 * ecuacion.a)
            let x2 = (-ecuacion.b) / (2.0 * ecuacion.a)
            return Result(r1: x1, r2: x2, imaginary: true, d: newD)
        }
        
        
    }
}

