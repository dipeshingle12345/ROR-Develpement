class PersonalDetails
    attr_reader :name,:email,:mobile,:place,:preferred_location
    def initialize(**args)
        @name=args[:name]
        @email=args[:email]
        @mobile=args[:mobile]
        @place=args[:place]
        @preferred_location=args[:preferred_location]
    end

     
    def append_to(file)
        file.puts("Resume of #{name}")
        file.puts("Email: #{email}")
        file.puts("Mobile: #{mobile}")
        file.puts("Place: #{place}")
        file.puts("Preferred location: #{preferred_location}")
        file.puts("\n")

      end
 
end

class Experience
    attr_reader :company_name,:current_post,:joining_date,:exiting_date
    def initialize(**args)
        @company_name=args[:company_name]
        @current_post=args[:current_post]
        @joining_date=args[:joining_date]
        @exiting_date=args[:exiting_date]

    end

    def append_to(file)
        file.puts("Experience:")
          file.puts("Company name: #{company_name}")
          file.puts("Current post: #{current_post}")
          file.puts("Joining date: #{joining_date}")
          file.puts("Exiting date: #{exiting_date}")
          file.puts("\n")
    end
end


class Skill
    attr_reader :name,:level,:duration
    def initialize(**args)
        @name=args[:name]
        @level=args[:level]
        @duration=args[:duration]


    end
   
end



class Qualifications
    attr_reader :course,:college,:board,:start_date,:end_date,:marks
    def initialize(**args)
        @course=args[:course]
        @college=args[:college]
        @board=args[:board]
        @start_date=args[:start_date]
        @end_date=args[:end_date]
        @marks=args[:marks]
    end
   
end



class Training 
    attr_reader :institution,:course,:start_date,:end_date,:description
    def initialize(**args)
        @institution=args[:institution]
        @course=args[:course]
        @start_date=args[:start_date]
        @end_date=args[:end_date]
        @description=args[:description]
    end
   
end


class Projects
    attr_reader :name,:start_date,:end_date,:github,:link,:technology,:description
    def initialize(**args)
        @name=args[:name]
        @start_date=args[:start_date]
        @end_date=args[:end_date]
        @github=args[:github]
        @link=args[:link]
        @technology=args[:technology]
        @description=args[:description]
    end

       
    def append_to(file)
        file.puts("Projects:")
          file.puts("Name: #{name}")
          file.puts("Start date: #{start_date}")
          file.puts("End date: #{end_date}")
          file.puts("Github: #{github}")
          file.puts("Link: #{link}")
          file.puts("Technology: #{technology}")
          file.puts("Description: #{description}")
          file.puts("\n")
      end
    


end


puts "What is your name?"
name = gets.chomp

puts "What is your email address?"
email = gets.chomp

puts "What is your mobile number?"
mobile = gets.chomp

puts "Where do you live?"
place = gets.chomp

puts "What is your preferred location?"
preferred_location = gets.chomp





person = PersonalDetails.new(name: name,email: email, mobile: mobile,place: place,preferred_location: preferred_location)

 







skill = Skill.new(name:"React Js ",level:"intermediate",duration:"1year")
 



qualifications = Qualifications.new(course:"B.sc",college:"Gujarati",board:"DAVV" ,start_date:"12-12-2020",end_date:"12-12-2023",marks:"80%")
 



training = Training.new(institution:"code better",course:"React js" , start_date:"12-12-2020",end_date:"12-12-2023",description:"best institute ever!")
 




 




 class Resume
    def initialize(person, skill, qualifications, training)
      @person = person
      @experience = []
      @skill = skill
      @qualifications = qualifications
      @training = training
      @project = []
    end
  
    # add exprience
    def add_experience
        keys = %i[company_name current_post joining_date exiting_date]
        puts 'Enter Experience details'
        args = take_input(keys)
    
        @experience << Experience.new(**args)
    end
 
      def add_experiences
        expriences = []
        repeat = true
    
        while repeat
          expriences << add_experience
    
          print 'Want to add more exprience? (Y/N): '
          repeat = gets.chomp.downcase
          repeat = repeat == 'y'
        end
    
         expriences
      end


    #   add projects
      def add_project
        keys = %i[name start_date end_date github link technology description]
        puts 'Enter Projects details'
        args = take_input(keys)
    
        @project << Projects.new(**args)
      end
 
      def add_projects
        projects = []
        repeat = true
    
        while repeat
          projects << add_project
    
          print 'Want to add more project? (Y/N): '
          repeat = gets.chomp.downcase
          repeat = repeat == 'y'
        end
    
         projects
      end



 
      def export(filename)
        file = File.open(filename, 'w')
    
        @person.append_to(file)
        @exprience.each do |element|
            element.append_to(file)
        end
        @project.each do |element|
            element.append_to(file)
          end


      end


      def convert_humanize_form(string)
        string.split('_').map(&:capitalize).join(' ')
      end



      def take_input(keys)
        keys.each_with_object({}) do |key, hash|
          print "#{convert_humanize_form(key.to_s)}: "
          hash[key] = gets.chomp
        end
      end


  
      def create_resume(filename)
        File.open(filename, "w") do |file|
        file.puts("Resume of #{@person.name}")
        file.puts("Email: #{@person.email}")
        file.puts("Mobile: #{@person.mobile}")
        file.puts("Place: #{@person.place}")
        file.puts("Preferred location: #{@person.preferred_location}")
        file.puts("\n")
  
        file.puts("Experience:")
      @experience.each do |exp|
        file.puts("Company name: #{exp.company_name}")
        file.puts("Current post: #{exp.current_post}")
        file.puts("Joining date: #{exp.joining_date}")
        file.puts("Exiting date: #{exp.exiting_date}")
        file.puts("\n")
      end
  
        file.puts("Skills:")
        file.puts("Name: #{@skill.name}")
        file.puts("Level: #{@skill.level}")
        file.puts("Duration: #{@skill.duration}")
        file.puts("\n")
  
        file.puts("Qualifications:")
        file.puts("Course: #{@qualifications.course}")
        file.puts("College: #{@qualifications.college}")
        file.puts("Board: #{@qualifications.board}")
        file.puts("Start date: #{@qualifications.start_date}")
        file.puts("End date: #{@qualifications.end_date}")
        file.puts("Marks: #{@qualifications.marks}")
        file.puts("\n")
  
        file.puts("Training:")
        file.puts("Institution: #{@training.institution}")
        file.puts("Course: #{@training.course}")
        file.puts("Start date: #{@training.start_date}")
        file.puts("End date: #{@training.end_date}")
        file.puts("Description: #{@training.description}")
        file.puts("\n")
  
        file.puts("Projects:")
        @project.each do |pro|
            file.puts("Name: #{pro.name}")
            file.puts("Start date: #{pro.start_date}")
            file.puts("End date: #{pro.end_date}")
            file.puts("Github: #{pro.github}")
            file.puts("Link: #{pro.link}")
            file.puts("Technology: #{pro.technology}")
            file.puts("Description: #{pro.description}")
            file.puts("\n")
        end

        
     
      end
    end
  end
  
# Create a new instance of Resume
resume = Resume.new(person, skill, qualifications, training)

# Add experiences and projects
resume.add_experiences
resume.add_projects

# Export the resume to a file called "resume.txt"
resume.export("resume.txt")


# also create a file like this way==>
# resume.create_resume("resumenew6.txt")
# File.open("resumenew6.txt", "r") {|file| puts file.read }


