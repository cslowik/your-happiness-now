//
//  UITextView-Configuration.swift
//  Your Happiness Now
//
//  Created by Chris Slowik on 5/24/17.
//  Copyright © 2017 Six Voices. All rights reserved.
//

import UIKit

extension UITextView {
    func configure() {
        isEditable = false
        isSelectable = false
        isScrollEnabled = false
        backgroundColor = UIColor.clear
    }
}
