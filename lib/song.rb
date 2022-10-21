class Song 

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
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
        histogram = {}
        @@genres.uniq.each do |genre|
            histogram[genre] = @@genres.count(genre)
        end
        histogram
    end

    def self.artist_count
        histogram = {}
        @@artists.uniq.each do |artist|
            histogram[artist] = @@artists.count(artist)
        end
        histogram
    end
end