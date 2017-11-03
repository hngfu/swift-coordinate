//
//  FigureFactory.swift
//  CoordinateCalculator
//
//  Created by 심 승민 on 2017. 11. 2..
//

import Foundation

struct FigureFactory{
    // 각 도형들의 꼭지점 갯수
    enum Figures: Int{
        case point = 1
        case line = 2
        case triangle = 3
        case rect = 4
    }
    
    // 꼭지점 갯수에 따라 각 도형 구조체 생성하여 반환.
    static func createFigure(from points: [MyPoint]) throws -> FigureCalculatable{
        switch points.count {
        case Figures.point.rawValue: return MyPoint(from: points)
        case Figures.line.rawValue: return MyLine(from: points)
        case Figures.triangle.rawValue: return MyTriangle(from: points)
        case Figures.rect.rawValue: return try MyRect(from: points)
        default: return MyPoint(from: points)
        }
    }
}

extension FigureFactory{
    // 점의 x좌표, y좌표를 각각 세트에 넣어 반환.
    static func getCoordSets(in points: [MyPoint]) -> (Set<Int>, Set<Int>){
        var xSet = Set<Int>()
        var ySet = Set<Int>()
        // 모든 점들을 x세트, y세트로 나눠 모음.
        for point in points{
            xSet.insert(point.x)
            ySet.insert(point.y)
        }
        return (xSet, ySet)
    }
}