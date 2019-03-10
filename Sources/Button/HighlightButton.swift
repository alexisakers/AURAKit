import UIKit

/**
 * A button that provides a visual feedback when the user interacts with it.
 *
 * This style of button works best with a solid background color. Use the `setBackgroundColor`
 * function on `UIButton` to set one.
 */

open class HighlightButton: RoundedButton, HighlighterTarget {

    private let highlighter = Highlighter()

    open override var bounds: CGRect {
        didSet {
            highlighter.updateBounds(bounds)
        }
    }

    // MARK: - Initialization

    public override init(frame: CGRect) {
        super.init(frame: frame)
        highlighter.target = self
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        highlighter.target = self
    }

    // MARK: - Touch Handling

    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        highlighter.handleTouchesBegan(touches, with: event)
    }

    open override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        highlighter.handleTouchesMoved(touches, with: event)
    }

    open override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        highlighter.handleTouchesEnded(touches, with: event)
    }

    // MARK: - Transitions

    /// Highlights the item.
    open func highlight() {
        let animations = {
            self.alpha = 0.5
        }

        UIView.transition(with: self, duration: 0.1, animations: animations)
    }

    /// Unhighlights the item.
    open func unhighlight() {
        let animations = {
            self.alpha = 1
        }

        UIView.transition(with: self, duration: 0.1, animations: animations)
    }

}
