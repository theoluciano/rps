class Round
  def initialize(game_type)
    @game_type = game_type
    @win_message = message_available[@game_type.to_sym][:win]
    @lose_message = message_available[@game_type.to_sym][:lose]
    @draw_message = 'It is a draw! Please try again'
  end

  def play
    player_one_win_count = 0
    player_two_win_count = 0

    until player_one_win_count == @game_type.to_i || player_two_win_count == @game_type.to_i
      puts 'Pick Rock, Paper, or Scissors'

      answer = gets.chomp

      options = ["Rock","Paper","Scissors"]
      puts "Hmmmm, I'm thinking"
      sleep 2
      ai = options.sample

      puts "You chose #{answer}. I chose #{ai}"

      if user_won?(answer, ai)
        player_one_win_count += 1
        puts @win_message
      elsif ai_won?(answer, ai)
        player_two_win_count += 1
        puts @lose_message
      else
        puts @draw_message
      end
    end
  end

  # def get_win_message
  #   if number == 1
  #     return @win_message
  #   elsif number == 2
  #     if player_one_win_count == 1
  #       return 'You won that round'
  #     else
  #       return @win_message
  #     end
  #   end
  # end

  def user_won?(answer, ai)
    (answer.downcase == "rock" && ai.downcase == 'scissors') ||
    (answer.downcase == "paper" && ai.downcase == 'rock') ||
    (answer.downcase == "scissors" && ai.downcase == 'paper')
  end

  def ai_won?(answer, ai)
    (ai.downcase == "rock" && answer.downcase == 'scissors') ||
    (ai.downcase == "paper" && answer.downcase == 'rock') ||
    (ai.downcase == "scissors" && answer.downcase == 'paper')
  end

  private

  def message_available
    {
      '1': {
        win: "You won!",
        lose: "You lost!"
      },
      '2': {
        win: "You won that round!",
        lose: "You lost that round!"
        final_win: "You won the game!",
        final_lose: "You lost the game!",
      }
    }
  end
end
