class Cult

attr_accessor :name , :location, :founding_year, :slogan

  @@all =[]

def self.all
    @@all
end

def initialize(name, location, founding_year, slogan)
  @name = name
  @location = location
  @founding_year = founding_year
  @slogan = slogan
  @@all << self
end


def recruit_follower(follower)
  follower = Follower.new
  @@all << follower
end

def cult_population
  self.all.count
end

def bloodoaths # cults have many bloodoaths
  BloodOath.all.select do |bloodoath|
    bloodoath.cult == self
  end
end

def followers #cults have many followers through bloodoaths
  bloodoaths.all.map do |bloodoath|
    bloodath.follower
  end
end

def self.find_by_name(name)
  self.all.select do |cult|
    cult.name == name
  end
end

def self.find_by_location(location)
  self.all.select do |cult|
    cult.location == location
  end
end

def self.find_by_founding_year(year)
  self.all.select do |cult|
  cult.founding_year == year
  end
end

def average_age #returns a float that is the average age of Self's followers
  followers.each do |follower|
  sum = follower.age
  average = sum/(followers.length+1)
end
average
end

def my_followers_mottos
#   * prints out all of the mottos for this cult's followers
follower.map do |follower|
  follower.motto
end
end


def self.least_popular
  self.all.select do |cult|
  # cult.min
#   * returns the `Cult` instance who has the least number of followers :(
end
end

def self.most_common_location
#   * returns a `String` that is the location with the most cults
# self.all.select do |cult|
# cult.location
end

end
