//
//  EcuacionesLaurie_Tests.swift
//  EcuacionesLaurieTests
//
//  Created by user194078 on 9/2/21.
//

import XCTest
@testable import EcuacionesLaurie

class equationSolverTests: XCTestCase {

    let EquationSolver = equationSolver()
    
    func testSolveWithImaginaryRoots() throws {
        // Given
        let input = Equation(a: 2.0, b: -2.0, c: 5.0)
        
        // When
        let result = EquationSolver.solve(ecuacion: input)
        
        // Then
        let expectedRoot1: Float16 = 0.5
        let expectedRoot2: Float16 = 0.5
        let expectedD: Float16 = 1.5
        XCTAssertEqual(result.r1, expectedRoot1)
        XCTAssertEqual(result.r2, expectedRoot2)
        XCTAssertEqual(result.d, expectedD)
        
    }

    func testSolveWithOneCoefficient() throws {
        // Given
        let input = Equation(a: 9.0, b: 0.0, c: 0.0)
        
        // When
        let result = EquationSolver.solve(ecuacion: input)
        
        // Then
        let expectedRoot1: Float16 = 0.0
        let expectedRoot2: Float16 = 0.0
        XCTAssertEqual(result.r1, expectedRoot1)
        XCTAssertEqual(result.r2, expectedRoot2)
        
    }
    
    func testSolveWithoutC() throws {
        // Given
        let input = Equation(a: 5.0, b: 2.0, c: 0.0)
        
        // When
        let result = EquationSolver.solve(ecuacion: input)
        
        // Then
        let expectedRoot1: Float16 = 0
        let expectedRoot2: Float16 = -0.4
        XCTAssertEqual(result.r1, expectedRoot1)
        XCTAssertEqual(result.r2, expectedRoot2)
    }
    
    func testSolveWithoutB() throws {
        // Given
        let input = Equation(a: -4.0, b: 0.0, c: 4.0)
        
        // When
        let result = EquationSolver.solve(ecuacion: input)
        
        // Then
        let expectedRoot1: Float16 = -1.0
        let expectedRoot2: Float16 = 1.0
        XCTAssertEqual(result.r1, expectedRoot1)
        XCTAssertEqual(result.r2, expectedRoot2)
    }
    
    func testSolveWithThreeCoefficients() throws {
        // Given
        let input = Equation(a: 1.0, b: -5.0, c: 6.0)
        
        // When
        let result = EquationSolver.solve(ecuacion: input)
        
        // Then
        let expectedRoot1: Float16 = 3
        let expectedRoot2: Float16 = 2
        XCTAssertEqual(result.r1, expectedRoot1)
        XCTAssertEqual(result.r2, expectedRoot2)
    }
    
    
    


}

