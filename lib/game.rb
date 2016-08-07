require_relative 'computer'
class Game

  attr_reader :item, :computer_item

  def initialize(player, item, computer)
    @player = player
    @item = item
    @computer = Computer.new
    @rules = {rock: {rock: :tie, paper: :lose, scissors: :win},
                  paper: {rock: :win, paper: :tie, scissors: :lose},
                  scissors: {rock: :lose, paper: :win, scissors: :tie}
                 }
  end


  def winner(item,computer_item)
      outcomes = @rules[item.downcase.to_sym][computer_item.downcase.to_sym]
      if outcomes == :win
        "Congrats"
      elsif outcomes == :lose
        "Sorry"
      else
        "Roll Again"
      end
  end
end
