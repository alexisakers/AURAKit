import UIKit

/**
 * A view with rounded corners.
 */

open class RoundedView: UIView, RoundedViewProtocol {

    public final override class var layerClass: AnyClass {
        return ContinuousMaskLayer.self
    }

}

/**
 * A button with rounded corners.
 */

open class RoundedButton: UIButton, RoundedViewProtocol {

    public final override class var layerClass: AnyClass {
        return ContinuousMaskLayer.self
    }

}
