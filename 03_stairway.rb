def welcome_message
  puts "Welcome to the stairs game!"
  puts
  puts "Here are the rules:"
  puts
  puts "A 5 or a 6 will make you go one step ahead."
  puts "A 1 means you go down one step."
  puts "A 2, 3 or 4 and you don't move."
  puts
end

def stairway
  step = 0
  turn = 0
    while step < 10
      dice = rand(1..6)
      puts "#{dice}"
      case dice
      when 5,6
        puts "Great! You move one step further!"
        step += 1
      when 1
        if step == 0
          step = 0
          puts "You stay on the ground floor."
        else
          step -= 1
          puts "Oh no... You go back to the previous step."
        end
      when 2,3,4
        puts "Nothing happens."
      end
      puts "You are now step #{step}"
      turn += 1
    end
    puts "Bravo! You won!"
    puts "Number of turns to win: #{turn}"
  return turn
end

def average_finish_time
  puts "How many times would you like to run the game?"
  print "> "
  x = gets.chomp.to_i
  while x < 100
    puts "Put a higher number, don't be shy!"
    print "> "
    x = gets.chomp.to_i
  end
  j = 0
  turn_array = []
  x.times do 
    turn = stairway
    turn_array[j] = turn
    j +=1
  end
  average = turn_array.sum / turn_array.length
  puts "The average number of turns to complete the game is #{average}"
end

def perform
  welcome_message
  average_finish_time
end

perform


