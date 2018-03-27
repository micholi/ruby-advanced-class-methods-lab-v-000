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

  def Song.create
    song = Song.new
    song.save

  end

  def Song.new_by_name(name)
    @name = name
  end

  def save
    self.class.all << self
  end

end
