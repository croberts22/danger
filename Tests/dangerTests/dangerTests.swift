import XCTest
@testable import danger

final class dangerTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(danger().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
