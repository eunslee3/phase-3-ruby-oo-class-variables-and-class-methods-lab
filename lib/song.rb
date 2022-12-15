class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre, attr = {})
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
        attr
    end

    def self.count
        @@count
    end

    def self.artists 
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
       @@genre.each do |genre, value = 0|
        genre_count = {genre = value += 1}
    end
end