def sign_up
  puts "---- Step 1 ----"
  puts "Please enter new password below."
  print "> "
  password = gets.chomp
  puts "Password successfully saved."
  return password
end

def login (password)
  puts "---- Step 2 ----"
  puts "Please enter your password."
  print "> "
  try_password = gets.chomp
  while try_password != password
    puts "Wrong password, please try again."
    print "> "
    try_password = gets.chomp
  end
  puts "Success"
end

def welcome_screen
    puts
    puts "---- WELCOME TO THE SECRET SPACE ----"
    puts
    puts "Amazing! You now have access to all of THP's members' most secret stuff!"
    puts
    puts "And you can also play some games!"
    puts "Hit 1 to build pyramids"
    puts "Hit 2 to climb stairs"
    print "> "
    game = gets.chomp
    if game == "1"
      def half_pyramid
        puts "Combien d'étages veux-tu dans ta pyramide ?"
        print "> "
        floors = gets.chomp.to_i
        floors.times do |i|
          (i + 1).times do
            print "#"
          end
          puts
        end
      end
      
      def full_pyramid
        puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu (entre 1 et 25) ?"
        print "> "
        height_pyramid = gets.chomp.to_i
        if (1..25).include? height_pyramid
          height_pyramid.times do |i|
            x = i+1
            y = height_pyramid - x
            y.times do
              print " "
            end
            x.times do
              print "#"
            end
            i.times do
              print "#"
            end
            puts 
          end
        else
          puts "Donne moi un nombre entre 1 et 25 !"
        end
      end
      
      def wtf_pyramid
        puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu (entre 1 et 25) ?"
        print "> "
        floors_wtf_pyramid = gets.chomp.to_i
        if floors_wtf_pyramid.odd?
          # i est le numéro d'étage, k est le nombre de "#" par étage
          i = 1
          k=1
          # j est le nombre d'espaces
          j = floors_wtf_pyramid /2
          while i <= (floors_wtf_pyramid /2) + 1
            j.times do
              print " "
            end
            k.times do
              print "#"
            end
            i += 1
            j -= 1
            k += 2
            puts
          end
          j += 1
          k -= 2
          (floors_wtf_pyramid/2).times do
            j += 1
            k -= 2
            j.times do
              print " "
            end
            k.times do
              print "#"
            end
            puts
          end
        else
          puts "Donne moi un nombre impair la prochaine fois, bye !"
        end
      end
      
      def pyramid_choice
        puts "Entre le numéro de la pyramide que tu désires."
        puts "1: semi-pyramide"
        puts "2: pyramide complète"
        puts "3: pyramide d'un nouveau genre"
        print "> "
        choice = gets.chomp
        case choice
        when "1"
          half_pyramid
        when "2"
          full_pyramid
        when "3"
          wtf_pyramid
        end
      end
      
      pyramid_choice
    elsif game == "2"
      puts "Welcome to the stairs game!"
puts
puts "Here are the rules:"
puts
puts "A 5 or a 6 will make you go one step ahead."
puts "A 1 means you go down one step."
puts "A 2, 3 or 4 and you don't move."
puts
puts "Ready? [Y/n]"
ready = gets.chomp

step = 0

if ready == "Y"
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
  end
  puts "Bravo! You won!"
else
  puts "See you soon!"
end
    else
      puts "Ok, we'll play later"
    end
end

def perform
  password = sign_up
  login (password)
  welcome_screen
end

perform
