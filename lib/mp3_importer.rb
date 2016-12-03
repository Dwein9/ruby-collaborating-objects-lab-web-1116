require 'pry'
class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select { |file| file.include?(".mp3")}
  end

  def import
      files.each do |file|
        artist_name = file.split(" - ")[0]
        artist = Artist.find_or_create_by_name(artist_name)
        artist.songs << Song.new_by_filename(file)
      end
  end

end
