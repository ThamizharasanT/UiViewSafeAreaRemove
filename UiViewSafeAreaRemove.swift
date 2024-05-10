
import UIKit

struct SafeArea{
    static var bottom: CGFloat{
        get {
            let edge: UIEdgeInsets?
            if #available(iOS 13.0, *) {
                let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
                edge = window?.safeAreaInsets
            } else {
                edge = UIApplication.shared.delegate?.window??.safeAreaInsets
            }
            return edge?.bottom ?? 0
        }
    }
    static var top: CGFloat{
        get {
            let edge: UIEdgeInsets?
            if #available(iOS 13.0, *) {
                let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
                edge = window?.safeAreaInsets
            } else {
                edge = UIApplication.shared.delegate?.window??.safeAreaInsets
            }
            return edge?.top ?? 0
        }
    }
}
