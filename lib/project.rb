class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def get_backers
        ProjectBacker.all.select{|backer|backer.project == self}
    end

    def backers
        get_backers.collect {|project|project.backer}
    end
end