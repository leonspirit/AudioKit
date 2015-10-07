//
//  AKSum.swift
//  AudioKit
//
//  Created by Aurelius Prochazka on 9/14/15.
//  Copyright © 2015 AudioKit. All rights reserved.
//

import Foundation

/** Sum of two input signals
*/
@objc class AKSum : AKParameter {
    
    // MARK: - Properties
    
    /** Input to the mathematical function */
    private var first  = AKParameter()
    /** Input to the mathematical function */
    private var second = AKParameter()
    
    // MARK: - Initializers
    
    /** Instantiates the sum
    
    - parameter first: The first input.
    - parameter plus: The second input.
    */
    init(_ first: AKParameter, plus second: AKParameter)
    {
        super.init()
        self.first = first
        self.second = second
        dependencies = [first, second]
    }
    
    /** Computation of the next value */
    override func compute() {
        leftOutput  = first.leftOutput  + second.leftOutput
        rightOutput = first.rightOutput + second.rightOutput
    }
}

/** Addition helper function */
func + (left: AKParameter, right: AKParameter) -> AKSum {
    return AKSum(left, plus: right)
}

/** Addition helper function */
func + (left: AKParameter, right: Float) -> AKSum {
    return AKSum(left, plus: akp(right))
}

/** Addition helper function */
func + (left: Float, right: AKParameter) -> AKSum {
    return AKSum(akp(left), plus: right)
}

/** Addition helper function */
func + (left: AKParameter, right: Int) -> AKSum {
    return AKSum(left, plus: akp(right))
}

/** Addition helper function */
func + (left: Int, right: AKParameter) -> AKSum {
    return AKSum(akp(left), plus: right)
}
