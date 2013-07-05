FILE = ARGV[0]

class CardGame
  attr_reader :cards
  def initialize
    @data_for_cards = []
    @cards = assemble_cards
  end

  def assemble_cards
    front = 0
    back = 1
    data_for_cards.each_slice(2) |card|
    #args = {description: slice[front], answer: slice[back]}
      @card << Card.new(slice[front], slice[back])
    end
  end  

  def parse_card_file
    cards_file = File.open(FILE, 'r')
    cards_file.each_with_index do |line,index|
      unless index % 3 == 2
        @data_for_cards << line.chomp
      end  
    end
  end
end

class GameDisplay #this is just for terminal input and output
  attr_reader :filename
  def initialize(file)
    @card_game = CardGame.new
  end
end

cg = CardGame.new
cg.parse_card_file
