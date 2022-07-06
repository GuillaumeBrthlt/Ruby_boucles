def roll_dice
  puts "appuyez sur entrée pour lancer le dé"
  gets
  dice = 1 + rand(6)
  puts "tu as fait un #{dice} !"
  return dice
end

def move(dice, actual_step)
  if dice == 5 or dice == 6
    actual_step = actual_step + 1
    puts "Félicitations, tu es monté d'un étage"
  elsif dice == 1 and actual_step > 1
    actual_step = actual_step - 1
    puts "oh non, tu es descendu d'un étage"
  elsif dice == 1 and actual_step == 1
    puts "tu n'as pas bougé, recommence"
  else
    puts "tu n'as pas bougé, recommence"
  end
  return actual_step
end

def end_of_game
  actual_step = 1
  count = 0
  until actual_step == 10
    puts "Tu es actuellement sur la marche #{actual_step}"
    dice = roll_dice
    actual_step = move(dice, actual_step)
    count = count + 1
  end
  puts "Houra ! tu as gagné en #{count} coups !"
end

def perform
  end_of_game
end

perform
