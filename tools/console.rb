require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


c1 = Cult.new("c1", "l1", 2018, "c'est la vie") # name, location, founding_year, slogan
c2 = Cult.new("c2", "l2", 2018, "c'est la vie") # name, location, founding_year, slogan
c3 = Cult.new("c3", "l2", 2018, "c'est la vie") # name, location, founding_year, slogan
c4 = Cult.new("c4", "l2", 2018, "c'est la vie") # name, location, founding_year, slogan
c5 = Cult.new("c5", "l3", 2018, "c'est la vie") # name, location, founding_year, slogan


f3 = Follower.new("f3", 22, "hello world") # name, age, life_motto
f2 = Follower.new("f2", 22, "hello world") # name, age, life_motto
f1 = Follower.new("f1", 30, "hello world") # name, age, life_motto
f4 = Follower.new("f4", 30, "hello world") # name, age, life_motto
f5 = Follower.new("f5", 40, "hello world") # name, age, life_motto
f6 = Follower.new("f6", 40, "hello world") # name, age, life_motto
f7 = Follower.new("f7", 45, "hello world") # name, age, life_motto
f8 = Follower.new("f8", 45, "hello world") # name, age, life_motto
f9 = Follower.new("f9", 45, "hello world") # name, age, life_motto
f10 = Follower.new("f10", 50, "hello world") # name, age, life_motto
f11 = Follower.new("f11", 55, "hello world") # name, age, life_motto
f12 = Follower.new("f12", 60, "hello world") # name, age, life_motto

c1.recruit_follower(2009, f1)
c1.recruit_follower(2010, f1)
c1.recruit_follower(2030, f2)
c1.recruit_follower(2040, f2)
c1.recruit_follower(2009, f3)
c1.recruit_follower(2009, f4)

f1.join_cult(2008, c2)
f7.join_cult(1991, c2)
f7.join_cult(2008, c4)
f8.join_cult(2008, c4)
f8.join_cult(2008, c2)
f1.join_cult(2008, c5)
f1.join_cult(2008, c5)

b1 = BloodOath.new(3000,c2,f9)
b2 = BloodOath.new(3000,c2,f10)
b3 = BloodOath.new(3000,c3,f11)
b4 = BloodOath.new(3000,c4,f12)
binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
