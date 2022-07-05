require "pry"

class Song 
     
    attr_accessor :name, :artist, :genre

    @@genres = []
    @@artists = []
    @@count = 0

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@artists << artist 
        @@count += 1 
        # if !@@artists.include?(artist) #put it in there if it's not already in there
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        #building a histogram
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
        end
        artist_count
    end

end

