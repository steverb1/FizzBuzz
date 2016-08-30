import XCTest

@testable import FizzBuzz

class BrainTests: XCTestCase
{
    var brain = Brain()
    
    func testIsDivisibleByThree_ThreeIs()
    {
        let result = brain.isDivisibleByThree(number: 3)
        XCTAssertEqual(result, true)
    }
    
    func testIsDivisibleByThree_FourIsNot()
    {
        let result = brain.isDivisibleByThree(number: 4)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFive_FiveIs()
    {
        let result = brain.isDivisibleByFive(number: 5)
        XCTAssertEqual(result, true)
    }
    
    func testIsDivisibleByFive_FourIsNot()
    {
        let result = brain.isDivisibleByFive(number: 4)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFifteen_ThirtyIs()
    {
        let result = brain.isDivisibleByFifteen(number: 30)
        XCTAssertEqual(result, true)
    }
    
    func testIsDivisibleByFifteen_TwentyIsNot()
    {
        let result = brain.isDivisibleByFifteen(number: 20)
        XCTAssertEqual(result, false)
    }
    
    func testCheck_3MeansFizz()
    {
        let result = brain.check(number: 3)
        XCTAssertEqual(result, Move.Fizz)
    }
    
    func testCheck_5MeansBuzz()
    {
        let result = brain.check(number: 5)
        XCTAssertEqual(result, Move.Buzz)
    }
    
    func testCheck_15MeansFizzBuzz()
    {
        let result = brain.check(number: 15)
        XCTAssertEqual(result, Move.FizzBuzz)
    }
    
    func testCheck_1Means1()
    {
        let result = brain.check(number: 1)
        XCTAssertEqual(result, Move.Number)
    }
    
    func testCheck_32Means32()
    {
        let result = brain.check(number: 32)
        XCTAssertEqual(result, Move.Number)
    }
}
