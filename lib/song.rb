class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
    self.artist = artist
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end
end
