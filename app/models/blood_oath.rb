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
    oaths = []
    self.all.each do |blood_oath|
      oaths << blood_oath.initiation_date
      if oaths.sort.first == blood_oath.initiation_date
        return blood_oath
      end
    end

  end
  # def self.first_oath
  #   oaths = self.all.map { |blood_oath| blood_oath.initiation_date }
  #   oaths.sort.first
  # end
  # def self.first_oath
  #   oath = 0
  #   first_oath = nil
  #   self.all.each do |blood_oath|
  #     if blood_oath.initiation_date > oath
  #       oath = blood_oath.initiation_date
  #       first_oath = oath
  #     end
  #   end
  #   first_oath
  # end
end # end of BloodOath class
