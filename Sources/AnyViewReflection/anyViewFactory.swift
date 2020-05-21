
import Foundation
import SwiftUI

@_silgen_name("_variadic_view_builder_anyViewFactory")
public func _anyViewFactory<C : View>(from view: C) -> AnyView {
    return AnyView(view)
}

private typealias Factory = @convention(thin) (UnsafeRawPointer, Any.Type, UnsafeRawPointer) ->(AnyView)

private let factory: Factory = {
    let handle = dlopen(nil, RTLD_GLOBAL)
    let symbolName = "_variadic_view_builder_anyViewFactory".cString(using: .utf8)
    let pointer = dlsym(handle, symbolName)!
    return unsafeBitCast(pointer, to: Factory.self)
}()

func anyViewFactory(view: UnsafeRawPointer, type: Any.Type, witnessTable: UnsafeRawPointer) -> AnyView {
    return factory(view, type, witnessTable)
}
