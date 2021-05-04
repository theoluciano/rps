class Round
  def play(number, win_message, lose_message)
    player_one_win_count = 0
    player_two_win_count = 0

    until player_one_win_count == number || player_two_win_count == number
      puts 'Pick Rock, Paper, or Scissors'

      answer = gets.chomp

      options = ["Rock","Paper","Scissors"]
      ai = options.sample

      puts "You chose #{answer}. I chose #{ai}"

      if user_won?(answer, ai)
        puts win_message
        player_one_win_count += 1
      elsif ai_won?(answer, ai)
        puts lose_message
        player_two_win_count += 1
      else
        puts 'It is a draw! Please try again'
      end
    end
  end

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
end
