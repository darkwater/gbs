module GBS
    module ProjectManager
        def self.init
            @projects = Userdata.projects
            @projects.each(&:register_schedules)
        end

        def self.projects
            @projects
        end

        def self.[](name)
            @projects.find { |n| n.name == name }
        end
    end
end
