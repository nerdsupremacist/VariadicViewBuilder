
import Foundation
import SwiftUI

extension ForEach: Decomposable where Content: View {

    func subviews() -> [AnyView] {
        return data.map(content).flatMap { $0.decompose() }
    }

}
