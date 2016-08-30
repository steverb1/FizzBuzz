import UIKit

class ViewController: UIViewController
{
    var gameScore: Int?
    {
        didSet
        {
            guard let gameScore = gameScore else { return }
            numberButton.setTitle("\(gameScore)", for: [])
        }
    }
    
    var game : Game?

    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        game = Game()
        
        gameScore = game?.score
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    func play(move: Move)
    {
        guard let game = game else { return }
        
        let response = game.play(move: move)
        gameScore = response.score
    }
    
    @IBAction func buttonTapped(_ sender: UIButton)
    {
        switch (sender)
        {
        case numberButton:
            play(move: Move.Number)
        case fizzButton:
            play(move: Move.Fizz)
        case buzzButton:
            play(move: Move.Buzz)
        case fizzBuzzButton:
            play(move: Move.FizzBuzz)
        default:
            print("Invalid selection.")
        }
    }
}
