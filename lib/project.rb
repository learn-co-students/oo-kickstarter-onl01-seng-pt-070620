class Project

    attr_reader :title
    attr_accessor :backers

    def initialize(title)
        @title = "Project With So Much Amaze"
        @backers = Array.new
    end

    def add_backer(backer)
        @backers << backer
        backer.backed_projects << self
    end


end
