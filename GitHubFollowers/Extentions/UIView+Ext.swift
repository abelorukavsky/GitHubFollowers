//
//  UIView+Ext.swift
//  GitHubFollowers
//
//  Created by Антон Белорукавский on 21.08.2022.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
