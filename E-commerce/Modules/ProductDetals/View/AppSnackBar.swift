//
//  File.swift
//  E-commerce
//
//  Created by Mina on 12/03/2023.
//

import Foundation
import SnackBar
class AppSnackBar: SnackBar{
    override var style: SnackBarStyle {
        var style = SnackBarStyle()
        style.background = .gray
        style.textColor = .black
        return style
    }
}
