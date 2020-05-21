
import Foundation
import SwiftUI

protocol Decomposable {
    func subviews() -> [AnyView]
}

extension View {

    static func any(from view: Any) -> AnyView {
        return AnyView(view as! Self)
    }

}
