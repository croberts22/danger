import XCTest

import dangerTests

var tests = [XCTestCaseEntry]()
tests += dangerTests.allTests()
XCTMain(tests)
