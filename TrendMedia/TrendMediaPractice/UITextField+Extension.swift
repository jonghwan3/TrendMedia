//
//  UITextField+Extension.swift
//  TrendMedia
//
//  Created by 박종환 on 2022/07/19.
//

import UIKit

extension UITextField {
    
    func borderColor() {
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 1.0
        self.borderStyle = .none
    }

}
