import Foundation

class Game: NSObject
{
    var score: Int
    var brain: Brain
    
    override init()
    {
        score = 0
        brain = Brain()
        super.init()
    }
    
    func play(move: Move) -> (right: Bool, score: Int)
    {
        let resultingMove = brain.check(number: score + 1)
        
        if resultingMove == move
        {
            score += 1
            return (true, score)
        }
        else
        {
            return (false, score)
        }
    }
}
