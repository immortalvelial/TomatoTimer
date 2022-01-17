//
//  UIColor.swift
//  TomatoTimer
//
//  Created by Nikita on 17.01.22.
//

import UIKit

extension UIColor {
    public static var testColor: UIColor = {
        if #available(iOS 13, *) {
            return UIColor { (UITraitCollection: UITraitCollection) -> UIColor in
                if UITraitCollection.userInterfaceStyle == .dark {
                    return .black
                } else {
                    return .white
                }
            }
        } else {
            return .white
        }
    }()
}
