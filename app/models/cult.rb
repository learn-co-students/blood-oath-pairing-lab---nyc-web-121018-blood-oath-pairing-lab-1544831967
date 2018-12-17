class Cult
  attr_accessor :location, :slogan
  attr_reader :name, :founding_year

  @@all = []

  def initialize(name, founding_year, location, slogan)
    @name = name
    @founding_year = founding_year
    @location = location
    @slogan = slogan

    @@all << self
  end

  def self.all
    @@all
  end

  def blood_oaths
    BloodOath.all.select do |oath|
      oath.cult == self
    end
  end

  def followers
    blood_oaths.map do |oath|
      oath.follower
    end
  end

  def recruit_follower(f_new)
    BloodOath.new('2018-12-15', self, f_new)
  end
  #tests passed!
  #   [1] pry(main)> c2.followers
  #   => [#<Follower:0x007fc74d22bd40
  #       @age=72,
  #       @life_motto="I have the best words",
  #       @name="Donald Trump">,
  #   #<Follower:0x007fc74d22b930
  #       @age=1003049,
  #       @life_motto="Lets blame the minority!",
  #       @name="Ann Coulter">]

  #   [2] pry(main)> c2.recruit_follower(f4)
  #   => #<BloodOath:0x007fc74d4b2078
  #       @cult=
  #    #<Cult:0x007fc74d230228
  #       @founding_year=2017,
  #       @location="USA",
  #       @name="Alt-right",
  #       @slogan="To preserve and protect the white race.">,
  #       @date="2018-12-15",
  #       @follower=#<Follower:0x007fc74d22b598 @age=22, @life_motto="hey", @name="Joe  Shmo">>

  #   [3] pry(main)> c2.followers
  #   => [#<Follower:0x007fc74d22bd40
  #       @age=72,
  #       @life_motto="I have the best words",
  #       @name="Donald Trump">,
  #   #<Follower:0x007fc74d22b930
  #       @age=1003049,
  #       @life_motto="Lets blame the minority!",
  #       @name="Ann Coulter">,
  #   #<Follower:0x007fc74d22b598 @age=22, @life_motto="hey", @name="Joe Shmo">]

  def cult_population
    pop_count = 0
    followers.each do |follower|
      pop_count += 1
    end
    pop_count
  end
  #tests passed!
  # [1] pry(main)> c2.cult_population
  # => 2

  def self.find_by_name(name)
    Cult.all.find do |cult|
      cult.name == name
    end
  end
  #tests passed!
  #   [1] pry(main)> Cult.find_by_name("Osho")
  #   => #<Cult:0x007f969d1b8858
  #     @founding_year=1980,
  #     @location="India",
  #     @name="Osho",
  #     @slogan="Free-love">


  ##I WATCHED THE REVIEW LECTURE AND REALIZE WHY MY ORIGNAL CODE WAS WRONG FOR THIS METHOD!!!
  def self.find_by_location(location)
    ## ORIGNAL CODE
    # Cult.all.map do |cult|
    #   if cult.location == location
    #     cult.name
    #   end
    # end
    Cult.all.select do |cult|
      cult.location == location
    end
  end
  #new tests passed!
  # [1] pry(main)> Cult.find_by_location("USA")
  # => [#<Cult:0x007ff4e0105bf8
  #     @founding_year=2017,
  #     @location="USA",
  #     @name="Alt-right",
  #     @slogan="To preserve and protect the white race.">,
  #  #<Cult:0x007ff4e0105b58
  #     @founding_year=1955,
  #     @location="USA",
  #     @name="Rock Music",
  #     @slogan="Rock and roll, dude.">]

  ## SAME SITUATION HERE
  def self.find_by_year(year)
    ## ORIGNAL CODE
    # found_year = Cult.all.map do |cult|
    #   if cult.founding_year == year
    #     cult.name
    #   end
    # end
    # found_year.compact
    Cult.all.select do |cult|
      cult.founding_year == year
    end
  end
  #tests passed!
  # [2] pry(main)> Cult.find_by_year(1955)
  # => [#<Cult:0x007ff4e0105cc0
  #   @founding_year=1955,
  #   @location="Guyana",
  #   @name="Jonestown",
  #   @slogan="Apostolic socialism.">,
  #  #<Cult:0x007ff4e0105b58
  #   @founding_year=1955,
  #   @location="USA",
  #   @name="Rock Music",
  #   @slogan="Rock and roll, dude.">]

end #end of Cult class

#a cult has many followers trhough blood oaths
