//
//  ColorResultVisitor.swift
//  Patterns-Visitor
//
//  Created by Ruslan on 29.01.2022.
//

import UIKit

struct ColorResultVisitor {
    
    func visit(_ cell: FirstCell) -> UIColor {
        return .systemGray
    }
    
    func visit(_ cell: SecondCell) -> UIColor {
        return .systemMint
    }
    
    func visit(_ cell: ThirdCell) -> UIColor {
        return .systemCyan
    }
}
