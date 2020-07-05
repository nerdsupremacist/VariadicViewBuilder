
import Foundation
import SwiftUI
import AssociatedTypeRequirementsVisitor

private let decomposer = Decomposer()

func unsafeDecompose(_ value: Any) -> [AnyView] {
    return decomposer(value)!
}

private struct Decomposer: ViewVisitor {
    func callAsFunction<T : View>(_ value: T) -> [AnyView] {
        return value.decompose()
    }
}
