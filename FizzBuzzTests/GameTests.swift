import XCTest

@testable import FizzBuzz

class GameTests: XCTestCase
{
    let game = Game()
    
    func testGameStartsAtZero()
    {
        XCTAssertTrue(game.score == 0)
    }
    
    func testScoreIncrements()
    {
        _ = game.play(move: Move.Number)
        XCTAssertTrue(game.score == 1)
    }
    
    func testIfFizzMoveRight()
    {
        game.score = 2
        let response = game.play(move: Move.Fizz)
        XCTAssertEqual(response.right, true)
    }
    
    func testIfFizzMoveWrong() {
        game.score = 1
        let response = game.play(move: Move.Fizz)
        XCTAssertEqual(response.right, false)
    }
    
    func testIfBuzzMoveRight() {
        game.score = 4
        let response = game.play(move: Move.Buzz)
        XCTAssertEqual(response.right, true)
    }
    
    func testIfBuzzMoveWrong() {
        game.score = 1
        let response = game.play(move: Move.Buzz)
        XCTAssertEqual(response.right, false)
    }
    
    func testIfFizzBuzzMoveRight() {
        game.score = 14
        let response = game.play(move: Move.FizzBuzz)
        XCTAssertEqual(response.right, true)
    }
    
    func testIfFizzBuzzMoveWrong() {
        game.score = 1
        let response = game.play(move: Move.FizzBuzz)
        XCTAssertEqual(response.right, false)
    }
    
    func testIfNumberMoveRight() {
        game.score = 1
        let response = game.play(move: Move.Number)
        XCTAssertEqual(response.right, true)
    }
    
    func testIfNumberMoveWrong() {
        game.score = 2
        let response = game.play(move: Move.Number)
        XCTAssertEqual(response.right, false)
    }
    
    func testIfMoveWrongScoreNotIncremented()
    {
        game.score = 1
        _ = game.play(move: Move.Fizz)
        XCTAssertEqual(game.score, 1)
    }
    
    func testPlayShouldReturnIfMoveRight()
    {
        let response = game.play(move: Move.Number)
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore()
    {
        let response = game.play(move: Move.Number)
        XCTAssertNotNil(response.score)
    }
}
