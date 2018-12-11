class RPSGame

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def self.check_win(hand1, hand2)
    hand1 = hand1.downcase
    hand2 = hand2.downcase

    win = {
      "rock" => "scissors",
      "scissors" => "paper",
      "paper" => "rock"
    }

    if hand1 == hand2
      return "it's a Draw!"
    elsif win[hand1] == hand2
      return "Player 1 wins with #{hand1}!"
    elsif win[hand2] == hand1
      return "Player 2 wins with #{hand2}!"
    else
      return "You didn't use valid inputs! Please try again with rock, paper or scissors."
    end
  end

end
