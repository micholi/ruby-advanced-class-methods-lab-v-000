class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

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
    song
  end

  def self.find_by_name(string)
    @@all.detect {|s| s.name == string}
  end

  def self.find_or_create_by_name(string)
    if self.find_by_name == string
      self.find_by_name(string)
    else
      self.create_by_name(name)
      self.name
    end
  end

  def save
    self.class.all << self
  end

end
