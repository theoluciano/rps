require_relative "round"

class Game
  def initialize
    @game_type = ''
  end

  def start
    determine_game_type

    round = Round.new(@game_type)
    round.play

    play_again
  end

  def determine_game_type
    puts 'Welcome to Rock, Paper, Scissors!'

    type = ''

    until type == '1' || type == '2'
      puts 'Type "1" for one game, or "2" for best two out of three'
      type = gets.chomp.downcase
    end

    @game_type = type
  end

  def play_again
    puts "Do you want to play again? (y/n)"

    response = gets.chomp

    start if response == "y"
  end
end
