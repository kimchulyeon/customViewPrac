import Foundation
import UIKit

//@IBDesignable
class DesignCustomView: UIView {
    @IBInspectable
    var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }

    @IBInspectable
    var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }

    @IBInspectable
    var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }

    @IBInspectable
    var isCircle: Bool = false {
        didSet {
            if isSquare() && isCircle {
                self.layer.cornerRadius = self.frame.width / 2
            }
        }
    }

    @IBInspectable
    var hasShadow: Bool = false {
        didSet {
            if hasShadow {
                self.layer.applyShadow()
            }
        }
    }

    @IBInspectable
    var whichBgColor: UIColor = UIColor.clear {
        didSet{
            self.layer.backgroundColor = whichBgColor.cgColor
        }
    }

    /// 정사각형 여부
    /// - Returns: true / false
    fileprivate func isSquare() -> Bool {
        return self.frame.width == self.frame.height
    }
}


