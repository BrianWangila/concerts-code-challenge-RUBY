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

    #should return an array of all the concerts that the band has played in
    def concerts
        Concert.all.select do |concert|
            concert.band == self
        end
    end

    #takes a venue and date (as a string) as arguments, and creates a new concert for the band in that venue on that date
    def play_in_venue(date, venue)
        Concert.new(date, self, venue)
    end

    #returns an array of strings representing all the introductions for this band
    def all_introductions
        self.concerts.map {|concert| concert.introduction}
    end
end
