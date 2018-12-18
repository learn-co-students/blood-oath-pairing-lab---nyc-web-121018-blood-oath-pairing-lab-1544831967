class BloodOath

  attr_accessor :initiation_date
  attr_reader :cult, :follower
  @@all = []

  def self.all
    @@all
  end

  def initialize(initiation_date, cult, follower)
    @initiation_date = initiation_date
    @cult = cult
    @follower = follower
    @@all << self
  end

  def self.first_oath
    first_oath = self.all.sort_by { |blood_oath| blood_oath.initiation_date }
    first_oath.first
  end
end # end of BloodOath class
