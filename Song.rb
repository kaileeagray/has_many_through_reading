class Song
  attr_accessor :name, :artist, :genre

  #we will give Song instances the ability to belong to a genre

  #associate a Song to a genre

  def initialize(name, genre)
    @name = name
    @genre = genre
    #refactor so that a new song gets associated to a genre and the given genre adds that song to its collection
    genre.add_song(self)
  end

end

#assign a Son instance a given genre:

rap = Genre.new("rap")
ninety_nine_problems = Song.new("99 Problems", rap)
