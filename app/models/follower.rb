class Follower
  attr_accessor :name, :age, :life_motto
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def join_cult(initiation_date, cult)
    BloodOath.new(initiation_date, cult, self)
  end

  def follower_bloodoaths
    BloodOath.all.select { |blood_oath| blood_oath.follower == self }
  end

  def cults
    cults = follower_bloodoaths.map { |blood_oath| blood_oath.cult }
  end

  def self.of_a_certain_age(age)
    self.all.select { |follower| follower.age >= age }
  end

  def my_cults_slogans
    cults.each { |cult| puts cult.slogan }
  end

  def self.most_active
    cults = 0
    most_active = nil
    self.all.each do |follower|
      if follower.cults.count > cults
        # binding.pry
        cults = follower.cults.count
        most_active = follower
      end
    end
    most_active
  end

  def self.top_ten
    self.all.sort do |follower|
      follower.cults.count
    end
  end

end # end of Follower class
