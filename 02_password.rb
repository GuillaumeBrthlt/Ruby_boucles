def signup
  puts "définissez votre mot de passe:"
  print "> "
  password_signup = gets.chomp.to_s
  return password_signup
end

def login(password_signup)
  puts "entrez votre mot de passe:"
  print "> "
  password_login = gets.chomp.to_s
  until password_login == password_signup
    puts "mot de pass erroné"
    puts "entrez votre mot de passe:"
    print "> "
    password_login = gets.chomp.to_s
  end
end

def welcome_screen
  puts "bienvenu dans ta zone secrète"
  puts "il se dit que Pauline fait fuir les gens qui viennent nous parler"
end

def perform
  password_signup = signup
  login(password_signup)
  welcome_screen
end

perform

