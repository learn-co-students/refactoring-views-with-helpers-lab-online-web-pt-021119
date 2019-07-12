module SongsHelper
  def link_to_artist(song)
    if song.artist
      link_to song.artist.name, artist_path(song.artist.id)
    else
      link_to "Add Artist", edit_song_path(song)
    end
  end

  def link_to_song(song)
    if song.artist
      link_to song.title, song_path(song)
    else
      link_to "Add Artist", edit_song_path(song)
    end
  end
end
