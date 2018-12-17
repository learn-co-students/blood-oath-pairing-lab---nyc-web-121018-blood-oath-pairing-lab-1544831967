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
end # end of BloodOath class
