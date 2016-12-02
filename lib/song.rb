class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    new_song = self.new(file.split(" - ")[1])
    new_artist = Artist.new(file.split(" - ")[0])
    new_song.artist= new_artist
    new_artist.add_song(new_song)
    new_artist.save
    new_song
  end




end
