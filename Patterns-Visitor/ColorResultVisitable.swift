//
//  ColorResultVisitable.swift
//  Patterns-Visitor
//
//  Created by Ruslan on 29.01.2022.
//

import UIKit

protocol ColorResultVisitable {
    func accept(_ visitor: ColorResultVisitor) -> UIColor
}
