
import Foundation
import SwiftUI

extension AnyView: Decomposable {

    func subviews() -> [AnyView] {
        let mirror = Mirror(reflecting: self)
        let storage = mirror.children.first!.value
        let storageMirror = Mirror(reflecting: storage)
        guard let view = storageMirror.children.first?.value as? Decomposable else { return [self] }
        return view.subviews()
    }

}
