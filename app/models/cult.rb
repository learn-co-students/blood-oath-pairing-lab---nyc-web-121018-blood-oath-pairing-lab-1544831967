class Cult
  attr_accessor :name, :location, :founding_year, :slogan
  @@all = []

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

  def recruit_follower(initiation_date, follower)
    BloodOath.new(initiation_date, self, follower)
  end

  def cult_bloodoaths
    BloodOath.all.select { |blood_oath| blood_oath.cult == self }
  end

  def followers
    followers = cult_bloodoaths.map { |blood_oath| blood_oath.follower }
  end

  def cult_population
    followers.count
  end

  def self.find_by_name(name)
    self.all.select { |cult| cult.name == name }
  end

  def self.find_by_location(location)
    self.all.select { |cult| cult.location == location }
  end

  def self.find_by_founding_year(year)
    self.all.select { |cult| cult.founding_year == year }
  end

  def average_age
    average_age = 0
    followers.map { |follower| average_age += follower.age }
    average_age = (average_age.to_f/self.cult_population)
  end

  def my_followers_mottos
    followers.each { |follower| puts follower.life_motto }
  end

  def self.least_popular
    least_popular = self.all.sort_by {|cult| cult.cult_population }
    least_popular.first
  end

  def self.most_common_location
    locations = self.all.map { |cult| cult.location }
    locations.max_by{|x| locations.count(x) }
  end
end
