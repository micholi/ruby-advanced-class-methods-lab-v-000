class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  # def initialize(name, artist_name)
  #  @name = name
  #  @artist_name = artist_name
  # end

  def self.create
    song = self.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    song.save
    
  end

  def save
    self.class.all << self
  end

end
