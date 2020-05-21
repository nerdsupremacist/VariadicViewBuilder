
import Foundation

struct ProtocolMetadata {
    let kind: Int
    let layoutFlags: UInt32
    let numberOfProtocols: UInt32
    let protocolDescriptorVector: UnsafeMutablePointer<ProtocolDescriptor>

    init(type: Any.Type) {
        self = unsafeBitCast(type, to: UnsafeMutablePointer<Self>.self).pointee
    }
}
