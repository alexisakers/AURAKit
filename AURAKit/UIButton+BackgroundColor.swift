import UIKit

extension UIButton {

    /**
     * Sets a background color as the background image of the button.
     * - parameter color: The color to use in the background.
     * - parameter state: The state for which this color should be used.
     */

    public func setBackgroundColor(_ color: UIColor, for state: UIControl.State) {
        let bounds = CGRect(x: 0, y: 0, width: 1, height: 1)
        let renderer = UIGraphicsImageRenderer(bounds: bounds)

        let image = renderer.image { context in
            color.setFill()
            context.fill(bounds)
        }

        setBackgroundImage(image, for: state)
    }

}
