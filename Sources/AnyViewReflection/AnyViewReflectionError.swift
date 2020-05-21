
import Foundation

public struct AnyViewReflectionError: Error, CustomStringConvertible, CustomDebugStringConvertible {
    public let type: Any.Type

    public var description: String {
        return debugDescription
    }

    public var debugDescription: String {
        return "Type \(type) does not conform to SwiftUI.View"
    }
}
