
class Profile
    attr_reader :name, :email, :mobile, :place, :preferred_location
  
    def initialize(**args)
      @name = args[:name]
      @email = args[:email]
      @mobile = args[:mobile]
      @place = args[:place]
      @preferred_location = args[:preferred_location]
    end
  
    def append_to(file)
      file.puts "Name: #{name}"
    end
  end
  
  class Job
    attr_reader :name, :technology, :start_date, :end_date, :post
  
    def initialize(**args)
      @name = args[:name]
      @technology = args[:technology]
      @start_date = args[:start_date]
      @end_date = args[:end_date]
      @post = args[:post]
    end
  end
  
  class Experience
    attr_reader :company_name, :current_post, :joining_date, :exiting_date, :jobs
  
    def initialize(**args)
      @company_name = args[:company_name]
      @current_post = args[:current_post]
      @joining_date = args[:joining_date]
      @exiting_date = args[:exiting_date]
      @jobs = args[:jobs]
    end
  end
  
  class Skill
    attr_reader :name, :level, :duration
  
    def initialize(**args)
      @name = args[:name]
      @level = args[:level]
      @duration = args[:duration]
    end
  end
  
  class Qualification
    attr_reader :course, :college, :board, :start_date, :end_date, :marks
  
    def initialize(**args)
      @course = args[:course]
      @college = args[:college]
      @board = args[:board]
      @start_date = args[:start_date]
      @end_date = args[:end_date]
      @marks = args[:marks]
    end
  end
  
  class Training
    attr_reader :course, :institution, :start_date, :end_date, :description
  
    def initialize(**args)
      @course = args[:course]
      @institution = args[:institution]
      @start_date = args[:start_date]
      @end_date = args[:end_date]
      @description = args[:description]
    end
  end
  
  class Project
    attr_reader :name, :technology, :start_date, :end_date, :github, :link, :description
  
    def initialize(**args)
      @name = args[:name]
      @technology = args[:technology]
      @start_date = args[:start_date]
      @end_date = args[:end_date]
      @github = args[:github]
      @link = args[:link]
      @description = args[:description]
    end
  end
  
  class Resume
    def initialize
      @experiences = []
      @skills = []
      @qualifications = []
      @trainings = []
      @projects = []
    end
  
    def add_profile
      keys = %i[name email mobile place preferred_location]
      puts 'Enter details for profile'
      @profile = Profile.new(**take_input(keys))
    end
  
    def add_job
      keys = %i[name technology start_date end_date post]
      puts 'Enter Job details'
      Job.new(**take_input(keys))
    end
  
    def add_jobs
      jobs = []
      repeat = true
  
      while repeat
        jobs << add_job
  
        print 'Want to add more job? (Y/N): '
        repeat = gets.chomp.downcase
        repeat = repeat == 'y'
      end
  
       jobs
    end
  
    def add_experience
      keys = %i[company_name current_post joining_date exiting_date]
      puts 'Enter Experience details'
      args = take_input(keys)
      args[:jobs] = add_jobs
  
      @experiences << Experience.new(**args)
    end
  
    def add_skill
      keys %i[name level duration]
  
      @skills << Skill.new(**take_input(keys))
    end
  
    def add_qualification
      keys = %i[course college board start_date end_date marks]
  
      @qualifications << Quadrilateral.new(**take_input(keys))
    end
  
    def add_training
      keys = %i[course institution start_date end_date description]
  
      @trainings << Training.new(**take_input(keys))
    end
  
    def add_project
      keys = %i[name technology start_date end_date github link description]
  
      @projects << Project.new(**take_input(keys))
    end
  
    def export(filename)
      file = File.open(filename, 'w')
  
      @profile.append_to(file)
    end
  
    private
  
    def humanize(string)
      string.split('_').map(&:capitalize).join(' ')
    end
  
    def take_input(keys)
      keys.each_with_object({}) do |key, hash|
        print "#{humanize(key.to_s)}: "
        hash[key] = gets.chomp
      end
    end
  end
  
  class ResumeBuilder
    def initialize
      @resume = Resume.new
    end
  
    def add_profile
      @resume.add_profile
    end
  
    def add_experiences
      repeat = true
  
      while repeat
        @resume.add_experience
  
        print 'Again? (Y/n)'
        repeat = gets.chomp.downcase
  
        repeat = repeat == 'y'
      end
    end
  end
  
  resume = Resume.new
  # p resume.add_profile
  resume.add_project
  
  print resume