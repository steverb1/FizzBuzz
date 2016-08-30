import XCTest

class ViewControllerUITests: XCTestCase
{
    let app: XCUIApplication = XCUIApplication()
    var numberButton: XCUIElement?
    var fizzButton: XCUIElement?
    var buzzButton: XCUIElement?
    var fizzBuzzButton: XCUIElement?
    
    override func setUp()
    {
        super.setUp()
        
        numberButton = app.buttons["numberButton"]
        fizzButton = app.buttons["fizzButton"]
        buzzButton = app.buttons["buzzButton"]
        fizzBuzzButton = app.buttons["fizzBuzzButton"]
        
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown()
    {
        super.tearDown()
    }
    
    func playTo14()
    {
        numberButton?.tap()
        numberButton?.tap()
        fizzButton?.tap()
        numberButton?.tap()
        buzzButton?.tap()
        fizzButton?.tap()
        numberButton?.tap()
        numberButton?.tap()
        fizzButton?.tap()
        buzzButton?.tap()
        numberButton?.tap()
        fizzButton?.tap()
        numberButton?.tap()
        numberButton?.tap()
    }

    func testTapNumberButtonIncrementsScore()
    {
        numberButton?.tap()
        let newScore = numberButton?.label
        XCTAssertEqual(newScore, "1")
    }
    
    func testTapNumberButtonTwiceIncrementsTo2()
    {
        numberButton?.tap()
        numberButton?.tap()
        let newScore = numberButton?.label
        XCTAssertEqual(newScore, "2")
    }
    
    func testTapFizzButtonIncrementsTo3()
    {
        numberButton?.tap()
        numberButton?.tap()
        fizzButton?.tap()
        let newScore = numberButton?.label
        XCTAssertEqual(newScore, "3")
    }
    
    func testTapBuzzButtonIncrementsTo5()
    {
        numberButton?.tap()
        numberButton?.tap()
        fizzButton?.tap()
        numberButton?.tap()
        buzzButton?.tap()
        let newScore = numberButton?.label
        XCTAssertEqual(newScore, "5")
    }
    
    func testTapFizzBuzzButtonIncrementsTo15() {
        playTo14()
        
        fizzBuzzButton?.tap()
        let newScore = numberButton?.label
        XCTAssertEqual(newScore, "15")
    }
}
