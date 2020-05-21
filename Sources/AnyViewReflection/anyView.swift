
import Foundation
import SwiftUI

public func anyView(from view: Any) throws -> AnyView {
    let conformance = ProtocolConformanceRecord(type: type(of: view), witnessTable: 0)
    let type = unsafeBitCast(conformance, to: AnyViewConvertible.Type.self)
    return try type.anyView(from: view)
}
