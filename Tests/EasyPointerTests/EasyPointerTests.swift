import XCTest
import EasyPointer

final class EasyPointerTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        var string = "Hello, World!"
        let pointer = UnsafeMutablePointer<String>(cast: &string)

        pointer.pointee = "Hallo, World!"

        XCTAssertEqual(string, "Hallo, World!")

        // Watch out! On Release builds this may crash
        // as string's lifetime may only extend to the
        // previous statement. You really should only
        // be taking pointers to things you know have
        // a lifetime longer than the pointer.
        pointer.pointee = "Oh no!"
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
