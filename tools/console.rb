require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
            #(name, founding_year, location, slogan)
c1 = Cult.new('Jonestown', 1955, 'Guyana', 'Apostolic socialism.')
c2 = Cult.new('Alt-right', 2017, 'USA', 'To preserve and protect the white race.')
c3 = Cult.new('Rock Music', 1955, 'USA', 'Rock and roll, dude.')
c4 = Cult.new('Osho', 1980, 'India', 'Free-love')

                #(name, age, life_motto)
f1 = Follower.new('Donald Trump', 72, 'I have the best words')
f2 = Follower.new('Ann Coulter', 1003049, 'Lets blame the minority!')
f3 = Follower.new('Freddie Mercury', 45, 'GALILEO')
f4 = Follower.new('Joe Shmo', 22, 'hey')

                  #(date, cult, follower)
bo1 = BloodOath.new('2000-06-06', c2, f1)
bo2 = BloodOath.new('0006-06-06', c2, f2)
bo3 = BloodOath.new('1952-04-21', c3, f3)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
