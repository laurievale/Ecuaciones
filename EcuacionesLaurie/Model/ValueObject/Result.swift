//
//  Result.swift
//  EcuacionesLaurie
//
//  Created by user194078 on 9/2/21.
//

import Foundation

public class Result {
    public let r1 :Float16
    public let r2: Float16
    public let imaginary: Bool
    public let d: Float16
    
    public init(r1: Float16, r2: Float16, imaginary: Bool, d: Float16) {
        self.r1 = r1
        self.r2 = r2
        self.imaginary = imaginary
        self.d = d
    }
    
}
