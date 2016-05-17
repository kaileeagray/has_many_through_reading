class Genre

  attr_accessor :name

  def initialize(name)
    @name = name
    #a song already belongs to a genre but a genre should have many songs
    @songs = []
  end

  #we want a genre to tell us about its songs and its artists
  #adds a new song to the given genre's collection

  def add_song(song)
    @songs << song
  end

  #tell our genres how to show us the artists they are associated to through the songs it has

  def artists
    @song.collect do |song|
      song.artist
    end
  end

end
