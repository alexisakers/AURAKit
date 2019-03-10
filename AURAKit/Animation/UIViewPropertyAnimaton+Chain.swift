import UIKit

extension UIViewPropertyAnimator {

    /**
     * Adds an animation to perform after the receiver finishes.
     * - parameter animation: The animation to run after this one finishes.
     */

    public func addNext(_ animation: UIViewPropertyAnimator) {
        self.addCompletion { position in
            guard position == .end else {
                return
            }

            animation.startAnimation()
        }
    }

}
