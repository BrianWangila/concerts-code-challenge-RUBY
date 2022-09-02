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

    #returns an array of all the concerts for the venue
    def concerts
        Concert.all.select do |concert|
            concert.venue == self
        end
    end

    #returns an array of all the bands for the venue
    def bands
        self.concerts.map do |band|
            band.band
        end
    end

    # takes a date (string) as argument
    # finds and returns the first concert on that date at that venue
    # if there is no concert on that date at that venue, returns nil
    def concert_on(date)
       self.concerts.find{|concert| concert.date == date}
    end

    #returns the band with the most concerts at the venue
    def most_frequent_band
        self.bands.max_by {|index| bands.count(index)}
    end
end


