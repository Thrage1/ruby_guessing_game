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
    #     end
    #     puts "you win"
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











#     while guess != actual_num
#       while guess_count < 10
#         if guess > actual_num
#           puts "too high"
#           puts "Guess again"
#           guess_count += 1
#           guess = gets.chomp.to_i
#         elsif guess < actual_num
#           puts "too low"
#           puts "Guess again"
#           guess_count += 1
#           guess = gets.chomp.to_i
#         elsif guess.class != Fixnum
#           puts "not a number bud"
#           puts "guess again"
#           guess_count += 1
#           guess = gets.chomp.to_i
#         break
#         puts "you lose more than 10 guesses"
#       else
#         puts "not a number buddy"
#       end
#       puts "lose with more than 10 guesses"
#       break
#     end
#     puts "You Win #{username}, it only took you #{guess_count} number
#     of guesses."
#     break
#   else
#     puts "please enter y or n"
#     play = gets.chomp
#   end
#   break
# end
