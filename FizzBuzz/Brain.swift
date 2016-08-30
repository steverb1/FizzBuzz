class Brain
{
    func check(number: Int) -> Move
    {
        if isDivisibleByFifteen(number: number)
        {
            return Move.FizzBuzz
        }
        else if isDivisibleByThree(number: number)
        {
            return Move.Fizz
        }
        else if isDivisibleByFive(number: number)
        {
            return Move.Buzz
        }
        else
        {
            return Move.Number
        }
    }
    
    func isDivisibleByThree(number: Int) -> Bool
    {
        return isDivisibleBy(divisor: 3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool
    {
        return isDivisibleBy(divisor: 5, number: number)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool
    {
        return isDivisibleBy(divisor: 15, number: number)
    }
    
    private func isDivisibleBy(divisor: Int, number: Int) -> Bool
    {
        return number % divisor == 0
    }
}
