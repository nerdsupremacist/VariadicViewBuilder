
import Foundation
import SwiftUI

private let swiftUIViewMetadata: ProtocolMetadata = {
    let module = "SwiftUI"
    let name = "View"
    let postfix = "_p"
    let mangled = "\(module.count)\(module)\(name.count)\(name)\(postfix)"
    return ProtocolMetadata(type: _typeByName(mangled)!)
}()

protocol AnyViewConvertible { }
extension AnyViewConvertible {
    static func anyView(from view: Any) throws -> AnyView {
        guard let witnessTable = _conformsToProtocol(Self.self, swiftUIViewMetadata.protocolDescriptorVector) else {
            throw AnyViewReflectionError(type: Self.self)
        }

        let pointer = UnsafeMutablePointer<Self>.allocate(capacity: 1)
        pointer.initialize(to: view as! Self)
        return anyViewFactory(view: pointer, type: Self.self, witnessTable: witnessTable)
    }
}
