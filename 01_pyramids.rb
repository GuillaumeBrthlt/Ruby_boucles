def ask_steps
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu (nombre impair entre 1 et 25)?"
    print ">"
    steps = gets.chomp.to_i
    
    until steps <= 25 and steps > 0 and steps.even? == false
      puts "Attention votre chiffre doit être impair et compris entre 1 et 25"
      print ">"
      steps = gets.chomp.to_i
    end
    return steps
end

def haut(bricks, steps)
    puts "Et voici ta pyramide:"
    bricks = 1
    for i in 1..steps
      print " " * (steps - 1) 
      puts "#" * (bricks) 
      steps = steps - 1
      bricks = bricks + 2
    end
    return bricks
end

def bas(bricks, steps, space)
    for j in 1..(steps - 1)
      print " " * (space)
      puts "#" * (bricks - 4) 
      space = space + 1
      bricks = bricks - 2
    end
end

def wtf_pyramid
    steps = ask_steps
    bricks =
    haut(bricks, steps)
    space = 1
    bas(bricks, steps, space)
end

wtf_pyramid

