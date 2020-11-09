class Project
    attr_reader :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end
    def self.all
        @@all
    end
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def backers
        person = ProjectBacker.all.select {|proj| proj.project == self}
        person.map {|proj| proj.backer}
    end
end