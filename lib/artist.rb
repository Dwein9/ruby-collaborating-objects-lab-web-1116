class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(new_song)
    @songs << new_song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(new_name)
    self.new(new_name) unless @@all.detect{|person| person.name == new_name}
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end
end
