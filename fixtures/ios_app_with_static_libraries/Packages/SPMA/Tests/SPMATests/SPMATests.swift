import XCTest
@testable import SPMA

final class SPMATests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SPMA().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
