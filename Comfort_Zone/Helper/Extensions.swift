//
//  Extensions.swift
//  Comfort_Zone
//
//  Created by Aung Kyaw Phyo on 02/03/2024.
//

import UIKit

extension String {
    var asURL: URL? {
        return URL(string: self)
    }
}

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return self.cornerRadius}
        set {
            self.layer.cornerRadius = newValue
        }
    }
}

extension UIViewController {
    static var identifier: String {
        return String(describing: self)
    }
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(identifier: identifier) as! Self
    }
}
