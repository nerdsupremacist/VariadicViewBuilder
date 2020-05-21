
import Foundation
import XCTest
import SwiftUI
@testable import VariadicViewBuilder

struct GenericView<Value: CustomStringConvertible>: View {
    let value: Value

    var body: some View {
        return Text("Value=\(value.description)")
    }
}

struct DecomposeTest {
    let views: [AnyView]

    init(@VariadicViewBuilder content: () -> [AnyView]) {
        self.views = content()
    }
}

class DecomposeTests: XCTestCase {

    func test_decomposesMultiple() {
        let test = DecomposeTest {
            GenericView(value: 1)
            Text("1")
            Text("2")
            Text("3")
        }

        XCTAssert(test.views.count == 4)
    }

    func test_decomposeTupleInForEach() {
        let test = DecomposeTest {
            ForEach(0..<3) { number in
                Text("First: \(number)")
                Text("Second: \(number)")
            }
            Text("1")
            Text("2")
            Text("3")
        }

        XCTAssert(test.views.count == 9)
    }

}
