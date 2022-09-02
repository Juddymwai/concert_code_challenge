class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all

        @@all

    end

    #eturns an array of all the concerts for the venue
    def concerts
        Concert.all.select do |concert|
            concert.venue == self
        end
        

    end
    #returns an array of all the bands for the venue

    def bands
        
        self.concerts.map do |b|
            b.band
        end

    end

    def concert_on(date)
        self.concerts.find {|conc| conc.date == date}

    end

    def most_frequent_band

        self.bands.max_by do |index|
        bands.count(index)
        end
    
    end
    
end
