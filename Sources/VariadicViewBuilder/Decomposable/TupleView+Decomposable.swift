
import Foundation
import SwiftUI
import AnyViewReflection

extension TupleView: Decomposable {

    func subviews() -> [AnyView] {
        let mirror = Mirror(reflecting: self)
        let tuple = mirror.children.first!.value
        let tupleMirror = Mirror(reflecting: tuple)
        return tupleMirror.children.flatMap { try! anyView(from: $0.value).subviews() }
    }

}
