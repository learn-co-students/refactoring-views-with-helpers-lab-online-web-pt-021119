class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    self.artist = Artist.new
    self.artist.name = name
    self.save
  end
end
