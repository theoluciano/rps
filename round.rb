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

      if did_user_win?(answer, ai)
        puts win_message
        player_one_win_count += 1
      elsif did_ai_win?(answer, ai)
        puts lose_message
        player_two_win_count += 1
      else
        puts 'It is a draw! Please try again'
      end
    end
  end

  def did_user_win?(answer, ai)
    answer == "Rock" && ai == "Scissors" ||
    answer == "Paper" && ai == "Rock" ||
    answer == "Scissors" && ai == "Paper"
  end

  def did_ai_win?(answer, ai) 
    answer == "Paper" && ai == "Scissors" ||
    answer == "Rock" && ai == "Paper" ||
    answer == "Scissors" && ai == "Rock"
  end
end