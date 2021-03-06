//
//  OutputView.swift
//  CoordinateCalculator
//
//  Created by 조재흥 on 2018. 10. 11..
//  Copyright © 2018년 Codesquad Inc. All rights reserved.
//

import Foundation

struct OutputView {
    static private func drawAxis() {
        print("\(ANSICode.clear)\(ANSICode.home)")
        print("\(ANSICode.text.redBright)\(ANSICode.axis.draw())")
    }
    
    static func show(figure:Figure) {
        self.drawAxis()
        show(points: figure.readPoints())
        cursorMove()
        if let specialFigure : CalculatedFigure = figure as? CalculatedFigure {
            print("\(specialFigure.calculateMent())\(specialFigure.calculate())")
        }
    }
    
    static private func show(points:[MyPoint]) {
        for point in points {
            print("\(ANSICode.cursor.move(row:point.xy.1, col:point.xy.0))🙈")
        }
    }
    
    static private func cursorMove() {
        print("\(ANSICode.cursor.move(row:ANSICode.axis.AxisLimit + 4, col:0))")
    }
}
