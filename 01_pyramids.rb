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
