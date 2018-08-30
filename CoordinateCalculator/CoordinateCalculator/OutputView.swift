//
//  OutputView.swift
//  CoordinateCalculator
//
//  Created by KIMMINSIK on 2018. 8. 23..
//  Copyright © 2018년 Codesquad Inc. All rights reserved.
//

import Foundation

struct OutputView {
    
    static func drawAxis() {
        print("\(ANSICode.text.whiteBright)\(ANSICode.axis.draw())")
    }
    
    static func deleteAxis () {
        print("\(ANSICode.clear)\(ANSICode.home)")
    }

    static func drawPoint(_ input: MyPointConvertible ) {
        let coordinatePoint = input.coordinateList
        drawAxis()
        print("\(ANSICode.cursor.move(row: coordinatePoint.1 , col: coordinatePoint.0))\(ANSICode.text.redBright).")
        print("\(ANSICode.cursor.move(row: 27, col: 0))")
        deleteAxis()
    }
}
