require 'pry'

class Song

    attr_accessor :name, :artist
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(file)
    
        song_title = file.split(" - ")[1]
        song_artist = file.split(" - ")[0]
        song = self.new(song_title)
        song.artist_name = song_artist
    
        song
      

    end

    def artist_name=(artist)
        #   binding.pry
        x = Artist.find_or_create_by_name(artist)
        x.add_song(self)
      

      
    end


end
