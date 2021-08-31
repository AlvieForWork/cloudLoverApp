//
//  designableSlider.swift
//  designableSlider
//
//  Created by worker on 2021/8/31.
//

import UIKit


@IBDesignable
class designableSlider: UISlider {
    @IBInspectable var thumbImage : UIImage? {
        didSet {
            setThumbImage(thumbImage, for: .normal)
        }
    }


}
