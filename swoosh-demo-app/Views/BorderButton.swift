//
//  BorderButton.swift
//  swoosh-demo-app
//
//  Created by Shawn Baugh on 4/18/19.
//  Copyright © 2019 Shawn Baugh. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 1.5
        layer.borderColor = UIColor.white.cgColor
    }
}
