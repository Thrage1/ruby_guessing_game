# guess my number game
# by David Veytsman


puts "What's your name?"
username = gets.chomp
puts "Hello #{username}, do you want to play a game? (y/n)"
play = gets.chomp.downcase
guess_count = 0
while true
  if play == "n"
    puts "ok, :("
    break
  elsif play == "y"
    if guess_count >= 10
      break
    end
    puts "yay lets play"
    actual_num = rand(101)
    puts "I've chosen a number from 1 - 100."
    puts "Guess my number"
    guess = gets.chomp.to_i
    guess_count += 1
    while (guess_count < 10) && ((guess <= 0) || (guess > 100))
      puts "invalid input"
      puts "enter a number from 1 - 100"
      guess = gets.chomp.to_i
      guess_count += 1
    end
      # if guess_count >= 10
      #   puts "too many guesses at #{guess_count} # of guesses"
      #   puts "you lose. My number was #{actual_num}"
      #   break
      # end
      while ((guess != actual_num) && (guess_count < 10))
        if ((guess > actual_num) && (guess_count < 10))
          puts "too high"
          puts "guess again"
          guess = gets.chomp.to_i
          guess_count += 1
        elsif ((guess < actual_num) && (guess_count < 10))
          puts "too low"
          puts "guess again"
          guess = gets.chomp.to_i
          guess_count += 1
        else
          puts "invalid choice"
          puts "please choose a number from 1 - 100"
          guess = gets.chomp.to_i
          guess_count += 1
        end
      end
      if guess == actual_num
        puts "you win my number was #{actual_num}, and it only took you #{guess_count} guesses"
        break
      end
      if guess_count >= 10
        puts "too many guesses at #{guess_count} guesses"
        puts "you lose. My number was #{actual_num}"
        break
      end
  else
    puts "not a valid entry. please enter y or n"
    play = gets.chomp.downcase
  end
end
