class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    self.songs << song
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def self.find(name)
    @@all.find{|artist| artist.name == name}
  end

  def self.create(name)
    artist = self.new(name)
    @@all << artist
    artist
  end
  
  def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end
  
  def print_songs
    @songs.each{|song| puts song.name}
  end
end