import XCTest
@testable import SwapiKit

final class SwapiKitTests: XCTestCase {
    
    let app = SwapiKit()
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        
        app.peopleService.getPeoples { (_peoples) in
            print("Data")
            print(_peoples)
        }
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
