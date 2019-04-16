//
//  GEUserSettings.swift
//  SO 55697172
//
//  Created by acyrman on 4/15/19.
//  Copyright © 2019 iCyrman. All rights reserved.
//

import UIKit

struct GEUserSettings {
    enum Theme { case light, dark }
    
    static public var theme: Theme = .light {
        didSet {
            guard theme != oldValue else { return }
            apply()
        }
    }
    static weak var window: UIWindow?
    
    static public func toggleTheme() {
        self.theme = theme == .light ? .dark : .light
    }
    
    static private func apply() {
        setColors()
        if let window = window {
            window.subviews.forEach({ (view: UIView) in
                view.removeFromSuperview()
                window.addSubview(view)
            })
        }
    }
    
    static public func setColors() {
        switch theme {
        case .light:
            UILabel.appearance().textColor = .black
            
            UISegmentedControl.appearance().tintColor = .blue
            UILabel.appearance(whenContainedInInstancesOf: [UISegmentedControl.self]).backgroundColor = .clear
            
            UITableViewHeaderFooterView.appearance().backgroundColor = .lightGray
            
            UITableView.appearance().backgroundColor = .white
        case .dark:
            UILabel.appearance().textColor = .red
            
            UISegmentedControl.appearance().tintColor = .purple
            UILabel.appearance(whenContainedInInstancesOf: [UISegmentedControl.self]).backgroundColor = .clear
            
            UITableViewHeaderFooterView.appearance().backgroundColor = .black
            
            UITableView.appearance().backgroundColor = .darkGray
        }
    }
    
}
