require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


sautisol = Band.new("Sautisol", "Nairobi")
jonas = Band.new("Jonas", "Chicago")


ruiru_sports = Venue.new("Ruiru Sports Club", "Nairobi")
new_arena = Venue.new("New Arena", "New York")

concert = Concert.new("July 3rd",sautisol,ruiru_sports)
concert2 = Concert.new("sept 2nd",jonas, new_arena )
concert3 =Concert.new("Dec 12", sautisol, ruiru_sports)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
