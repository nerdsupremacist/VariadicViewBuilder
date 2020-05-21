
import Foundation
import SwiftUI

extension View {

    public func decompose() -> [AnyView] {
        if let decomposable = self as? Decomposable {
            return decomposable.subviews()
        }

        if Body.self == Never.self {
            return [AnyView(self)]
        }

        return body.decompose()
    }

}
