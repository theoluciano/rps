require_relative "round"

class Game
  def start
    game_type = determine_game_type

    round = Round.new

    if game_type == "1"
      round.play(1, "You won!", "You lost!")
    else 
      round.play(2, "You won that round!", "You lost that round!")
    end
    play_again
  end

  def determine_game_type
    puts 'Welcome to Rock, Paper, Scissors!'

    type = ''

    until type == '1' || type == '2'
      puts 'Type "1" for one game, or "2" for best two out of three'
      type = gets.chomp.downcase
    end

    type
  end

  def play_again
    puts "Do you want to play again? (y/n)"

    response = gets.chomp

    start if response == "y"
  end
end
