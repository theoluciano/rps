class Game
  def start_game
      puts 'Welcome to Rock, Paper, Scissors! Type "1" for one game, or "2" for best two out of three'
  
      type = gets.chomp
      @winner1 = 0
      @winner2 = 0
  
      if type == "1"
          one_round_game
      else 
          best_out_of_three_game
      end
  end

  def one_round_game
      until @winner1 == 1 || @winner2 == 1
          puts 'Pick Rock, Paper, or Scissors'

          answer = gets.chomp

          options = ["Rock","Paper","Scissors"]
          ai = options.sample

          puts "You chose #{answer}. I chose #{ai}"


          if answer == "Rock" && ai == "Scissors"
              puts 'You win!'
              @winner1 += 1

          elsif answer == "Paper" && ai == "Rock"
              puts 'You win!'
              @winner1 += 1

          elsif answer == "Scissors" && ai == "Paper"
              puts 'You win!'
              @winner1 += 1

          elsif answer == "Paper" && ai == "Scissors"
              puts 'You lose!'
              @winner2 += 1
              
          elsif answer == "Rock" && ai == "Paper"
              puts 'You lose!'
              @winner2 += 1

          elsif answer == "Scissors" && ai == "Rock"
              puts 'You lose!'
              @winner2 += 1
          
          else answer == ai
              puts 'It is a draw! Please try again'
          end
      end
  end

  def best_out_of_three_game
      until @winner1 == 2 || @winner2 == 2

          puts 'Pick Rock, Paper, or Scissors'

          answer = gets.chomp

          options = ["Rock","Paper","Scissors"]
          ai = options.sample

          puts "You chose #{answer}. I chose #{ai}"

          if answer == "Rock" && ai == "Scissors"
              puts 'You won that round!'
              @winner1 += 1

          elsif answer == "Paper" && ai == "Rock"
              puts 'You won that round!'
              @winner1 += 1
          
          elsif answer == "Scissors" && ai == "Paper"
              puts 'You won that round!'
              @winner1 += 1

          elsif answer == "Paper" && ai == "Scissors"
              puts 'You lost that round!'
              @winner2 += 1
              
          elsif answer == "Rock" && ai == "Paper"
              puts 'You lost that round!'
              @winner2 += 1

          elsif answer == "Scissors" && ai == "Rock"
              puts 'You lost that round!'
              @winner2 += 1
          
          else answer == ai
              puts 'It is a draw! Please try again'
          end
      end
  end
end
