//
//  MyFigures.swift
//  CoordinateCalculator
//
//  Created by Huan Suh on 2018. 7. 8..
//  Copyright © 2018년 Codesquad Inc. All rights reserved.
//

import Foundation

struct MyFigures {
    public struct MyPoint : Figure {
        public var description: String {
            return ""
        }
        
        var x = 0
        var y = 0
        
        func getPoints() -> [MyFigures.MyPoint] {
            var points = [MyPoint]()
            points.append(MyPoint(x: x, y: y))
            return points
        }
    }
    
    public struct MyLine : Figure {
        public var description: String {
            return ""
        }
        
        var p1 = MyPoint(x: 0, y: 0)
        var p2 = MyPoint(x: 0, y: 0)
        
        private func calcDist() -> Float {
            return Float(0)
        }
        
        func getPoints() -> [MyFigures.MyPoint] {
            return [MyPoint]()
        }
    }
    
    public struct MyTriangle : Figure {
        public var description: String {
            return ""
        }
        
        var lineAB = MyLine(p1: MyPoint(), p2: MyPoint())
        var lineBC = MyLine(p1: MyPoint(), p2: MyPoint())
        var lineAC = MyLine(p1: MyPoint(), p2: MyPoint())
        
        init(pointA: MyPoint, pointB: MyPoint, pointC: MyPoint) {
            lineAB = MyLine(p1: pointA, p2: pointB)
            lineBC = MyLine(p1: pointB, p2: pointC)
            lineAC = MyLine(p1: pointA, p2: pointC)
        }
        
        private func calcArea() -> Float {
            return Float(0)
        }
        
        func getPoints() -> [MyFigures.MyPoint] {
            return [MyPoint]()
        }
    }
    
    struct MyRect : Figure {
        var description: String {
            return ""
        }
        
        var leftTop = MyPoint()
        var rightBottom = MyPoint()
        
        init(origin: MyPoint, size: CGSize) {
            //로직구현
        }
        
        func getPoints() -> [MyFigures.MyPoint] {
            return [MyPoint]()
        }
    }
}


protocol Figure : CustomStringConvertible {
    func getPoints() -> [MyFigures.MyPoint]
}
