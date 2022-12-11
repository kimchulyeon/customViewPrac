import Foundation
import UIKit

extension CALayer {
    /// 그림자효과
    /// - Parameters:
    ///   - color: 색상
    ///   - alpha: 투명도
    ///   - x: x축
    ///   - y: y축
    ///   - blur: 블러
    ///   - spread: 퍼짐
  func applyShadow(
    color: UIColor = .black,
    alpha: Float = 0.5,
    x: CGFloat = 0,
    y: CGFloat = 20,
    blur: CGFloat = 35,
    spread: CGFloat = 0)
  {
    masksToBounds = false
    shadowColor = color.cgColor
    shadowOpacity = alpha
    shadowOffset = CGSize(width: x, height: y)
    shadowRadius = blur / 2.0
    if spread == 0 {
      shadowPath = nil
    } else {
      let dx = -spread
      let rect = bounds.insetBy(dx: dx, dy: dx)
      shadowPath = UIBezierPath(rect: rect).cgPath
    }
  }
}

