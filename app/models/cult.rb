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

  def cult_population
    population = BloodOath.all.select { |blood_oath| blood_oath.cult == self }
    population.count
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
end
