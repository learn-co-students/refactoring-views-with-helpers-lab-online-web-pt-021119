class Song < ActiveRecord::Base
  belongs_to :artist

	def artist_name
		# binding.pry
		self.artist.name if artist
  end

	def artist_name=(name)
		self.artist = Artist.find_or_create_by(name: name)
		artist_name
  end
end
