class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

   
    def self.all
        @@all
    end

    def concerts
        Concert.all.select do |concert|
            concert.band == self
        end
        
    end
    # takes a venue and date (as a string) as arguments, and creates a new concert for the band in that venue on that date


    def play_in_venue(venue, date)
        Concert.new(date, self, venue)

    end

    def all_introductions
        self.concerts.map do |concert|
            concert.introduction
        end
    end


    
   
end

