  def add_song(song)
    song.artist = self unless song.artist
    songs << song unless songs.include?(song)
  end

  def genres
    songs.collect{ |s| s.genre }.uniq
  end
end