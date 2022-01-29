//
//  Cells.swift
//  Patterns-Visitor
//
//  Created by Ruslan on 29.01.2022.
//

import UIKit

class FirstCell: UITableViewCell {
    // something
}

class SecondCell: UITableViewCell {
    // something
}

class ThirdCell: UITableViewCell {
    // something
}

extension FirstCell: ColorResultVisitable {
    func accept(_ visitor: ColorResultVisitor) -> UIColor {
        return visitor.visit(self)
    }
}

extension SecondCell: ColorResultVisitable {
    func accept(_ visitor: ColorResultVisitor) -> UIColor {
        return visitor.visit(self)
    }
}

extension ThirdCell: ColorResultVisitable {
    func accept(_ visitor: ColorResultVisitor) -> UIColor {
        return visitor.visit(self)
    }
}
