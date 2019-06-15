class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    @@all << song
    song
  end

  def self.new_by_name(name)
    song = self.create
    song.name = name
    song
  end # newbyname


  def self.create_by_name(name)
    song = self.create
    song.name = name
    @@all << song
    song
  end

  def self.find_by_name(name)
    result = ""
    search = @@all.find{ |song| song.name == name}
    search != nil ? result = search : result = false
    result
  end # findbyname


  def self.find_or_create_by_name(name)
    check = Song.find_by_name(name)
    pry.binding
    puts "name #{name} check #{check}"

    self.create_by_name(name)

  end # method





  def self.alphabetical
    sorted = @@all
    # sorted = @@all.sort do |a, b|
    #   a.name <=> b.name
    # end #iterator
    sorted
  end #method#

  def self.destroy_all
    @all = []
  end #method


end # end of class
