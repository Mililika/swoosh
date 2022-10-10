//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Mykhailo Kazymyr  on 10.10.22.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
