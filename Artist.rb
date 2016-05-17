class Artist
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  #an artist has many genres through songs. in order to ask an artist about it's genre, we have to go through that artist's songs
  # we'll need to collect all of the songs of a given artist and then collect the genre associated to each of those songs

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end

end
