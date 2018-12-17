  class BloodOath

  attr_accessor :date, :cult, :follower

  @@all = []

  def self.all
    @@all
  end

  def initialize(inititation_date, cult, follower)
    @cult = cult
    @follower = follower
    @initiation_date = "#{time.year}-#{time.month}-#{time.day}"
    @@all << self
  end

    def initiation_date
      @initiation_date
    end
    # puts time.year    # => Year of the date
    # puts time.month   # => Month of the date (1 to 12)
    # puts time.day     # => Day of the date (1 to 31 )


def self.first_oath
  @@all[0]
end

end
