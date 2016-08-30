import XCTest

@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase
{
    var viewController : ViewController!
    
    override func setUp()
    {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main())
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared().keyWindow!.rootViewController = viewController
        
        _ = viewController.view
    }
    
    func testMove1IncrementsScore()
    {
        viewController.play(move: Move.Number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementScore()
    {
        viewController.play(move: Move.Number)
        viewController.play(move: Move.Number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testHasAGame()
    {
        XCTAssertNotNil(viewController.game)
    }
    
    func testFizzIncrementScore()
    {
        viewController.game?.score = 2
        viewController.play(move: Move.Fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testBuzzIncrementScore()
    {
        viewController.game?.score = 4
        viewController.play(move: Move.Buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrementScore()
    {
        viewController.game?.score = 14
        viewController.play(move: Move.FizzBuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    func testOnWrongMoveScoreNotIncremented()
    {
        viewController.game?.score = 2
        viewController.play(move: Move.Number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
}
