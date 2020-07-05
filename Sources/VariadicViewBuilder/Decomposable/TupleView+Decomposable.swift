
import Foundation
import SwiftUI

extension TupleView: Decomposable {

    func subviews() -> [AnyView] {
        let mirror = Mirror(reflecting: self)
        let tuple = mirror.children.first!.value
        let tupleMirror = Mirror(reflecting: tuple)
        return tupleMirror.children.flatMap { unsafeDecompose($0.value) }
    }

}
