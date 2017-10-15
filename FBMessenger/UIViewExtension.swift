//
//  UIViewExtension.swift
//  FBMessenger
//
//  Created by John Ernest Ramos on 15/10/2017.
//  Copyright © 2017 John Ernest Ramos. All rights reserved.
//
import UIKit

extension UIView {
    func addConstraintWith(format: String, views: UIView...) {
        var viewsDictionary = [String : UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            viewsDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
}
