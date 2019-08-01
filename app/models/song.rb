class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name if self.artist
  end

  def artist_name=(name)
    if !name.blank?
      a = Artist.find_by name: name
      if a
        self.artist_id = a.id
      else
        self.build_artist(name: name)
      end
    end
  end
end
