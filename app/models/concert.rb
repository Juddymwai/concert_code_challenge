class Concert

    attr_accessor :date, :band, :venue

    @@all =[]

    def initialize (date, band, venue)
        @date= date
        @band = band
        @venue = venue
        @@all << self
    end

    # returns an array of all the instances of `Band`
    def self.all
        @@all
    end


#   returns `true` if the concert is in the band's hometown, `false` if it is not

     def hometown_show?
        if  self.band.hometown == self.venue.city
            
            "True"
        else
            "false"
        end
        # or
        # self.band.hometown == self.venue.city
     end

     def introduction
        "Hello #{self.venue.city} !!!!!!, we are #{band.name} and we're from #{band.hometown}"

     end

 
end
