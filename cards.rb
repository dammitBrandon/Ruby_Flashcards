#this will have the card class
class Card
  attr_reader :definition, :answer
  def initialize(args)
    @definition = args[:definition]
    @answer = args[:answer]
  end

  def check_answer(answer)
    answer = answer.downcase
    return (answer== @answer.downcase)
  end

end

args = {definition: "Designates code that must be run unconditionally at the beginning of the program before any other.", answer: "BEGIN"}
card = Card.new(args)
p card
p card.check_answer("begin")
