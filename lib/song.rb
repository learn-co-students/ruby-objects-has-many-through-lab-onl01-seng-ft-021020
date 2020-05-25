class Song

    attr_accessor :name, :genre, :artist

    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@all << self
    end

    def songs

    end

    def genres

    end

    def self.all
        @@all

    end
end