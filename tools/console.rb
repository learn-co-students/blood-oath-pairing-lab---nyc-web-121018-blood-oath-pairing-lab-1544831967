require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


c1 = Cult.new("c1", "l1", 2018, "c'est la vie") # name, location, founding_year, slogan
c2 = Cult.new("c2", "l1", 2018, "c'est la vie") # name, location, founding_year, slogan
c3 = Cult.new("c3", "l2", 2018, "c'est la vie") # name, location, founding_year, slogan
c4 = Cult.new("c4", "l3", 2018, "c'est la vie") # name, location, founding_year, slogan
c5 = Cult.new("c5", "l3", 2018, "c'est la vie") # name, location, founding_year, slogan


f1 = Follower.new("f1", 22, "hello world") # name, age, life_motto
f2 = Follower.new("f2", 22, "hello world") # name, age, life_motto
f3 = Follower.new("f3", 30, "hello world") # name, age, life_motto
f4 = Follower.new("f4", 30, "hello world") # name, age, life_motto
f5 = Follower.new("f5", 40, "hello world") # name, age, life_motto
f6 = Follower.new("f6", 40, "hello world") # name, age, life_motto
f7 = Follower.new("f7", 45, "hello world") # name, age, life_motto
f8 = Follower.new("f8", 45, "hello world") # name, age, life_motto

c1.recruit_follower(2009, f1)
c1.recruit_follower(2010, f1)
c1.recruit_follower(2030, f2)
c1.recruit_follower(2040, f2)
c1.recruit_follower(2009, f3)
c1.recruit_follower(2009, f4)

f1.join_cult(2008, c2)
f7.join_cult(2008, c2)
f7.join_cult(2008, c4)
f8.join_cult(2008, c4)
f8.join_cult(2008, c2)
f1.join_cult(2008, c5)
f1.join_cult(2008, c5)
binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
