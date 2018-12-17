class Follower
  attr_accessor :life_motto
  attr_reader :name, :age

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto

    @@all << self
  end

  def self.all
    @@all
  end

  def blood_oaths
    BloodOath.all.select do |oath|
      oath.follower == self
    end
  end

  def cults
    blood_oaths.map do |oath|
      oath.cult
    end
  end

  def join_cult(c_new)
    BloodOath.new('2018-12-15', c_new, self)
  end
  #tests passed!
  #   [1] pry(main)> f2.cults
  #   => [#<Cult:0x007f926a2325e0
  #      @founding_year=2017,
  #      @location="USA",
  #      @name="Alt-right",
  #      @slogan="To preserve and protect the white race.">]

  #   [3] pry(main)> f2.join_cult(c4)
  #   => #<BloodOath:0x007f926b1d0c90
  #     @cult=
  #   #<Cult:0x007f926a232298
  #     @founding_year=1980,
  #     @location="India",
  #     @name="Osho",
  #     @slogan="Free-love">,
  #     @date="2018-12-15",
  #     @follower=
  #   #<Follower:0x007f926a232130
  #     @age=1003049,
  #     @life_motto="Lets blame the minority!",
  #    @name="Ann Coulter">>

  # [4] pry(main)> f2.cults
  # => [#<Cult:0x007f926a2325e0
  #       @founding_year=2017,
  #       @location="USA",
  #       @name="Alt-right",
  #       @slogan="To preserve and protect the white race.">,
  #  #<Cult:0x007f926a232298
  #       @founding_year=1980,
  #       @location="India",
  #       @name="Osho",
  #       @slogan="Free-love">]

  def self.of_a_certain_age(age)
    Follower.all.find do |follower|
      follower.age == age
    end
  end
  #tests passed!
  #   [1] pry(main)> Follower.of_a_certain_age(22)
  #     => #<Follower:0x007fb3c8807428 @age=22, @life_motto="hey", @name="Joe Shmo">


end #end of Follower class

#a follower has many cults through blood oaths
