class Followers

attr_accessor :name, :age , :life_motto

@@all =[]

def self.all
  @@all
end

def initialize(name, age, life_motto)
  @name = name
  @age = age
  @life_motto = life_motto
  @@all << self
end

def bloodoaths # followers have many bloodoaths
  BloodOath.all.select do |BloodOath|
    BloodOath.followers == self
  end
end

def cults #followers have cults through bloodoaths
  self.bloodoaths.map do |bloodoath|
    bloodoath.cults
  end
end

def join_cult(cult)
  cult.recruit_follower(self)
end
#
def self.of_a_certain_age
  cults.all.select do |cult|
    cult.followers.age == age
  end
end

def my_cults_slogans
  cults.select do |cult|
    cult.slogan
  end
end

def self.most_active
  #returns the `Follower` instance who has joined the most cults
end

def self.top_ten
  #returns an `Array` of followers; they are the ten most active followers
end

def fellow_cult_members
  cults.followers
end

def join_cult(cult)
  if self.age >= Cult.mininum_age
  cult.followers << self
  else
  "You are too young to join this cult"
  end
end




end
