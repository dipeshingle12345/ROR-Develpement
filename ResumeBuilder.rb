class PersonalDetails
    attr_reader :name,:email,:mobile,:place,:preferred_location
    def initialize(**args)
        @name=args[:name]
        @email=args[:email]
        @mobile=args[:mobile]
        @place=args[:place]
        @preferred_location=args[:preferred_location]
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

 


experience = Experience.new(company_name:"mindfire",current_post:"software engineer",joining_date:"20-12-2022",exiting_date:"20-12-2023")
 


skill = Skill.new(name:"React Js ",level:"intermediate",duration:"1year")
 



qualifications = Qualifications.new(course:"B.sc",college:"Gujarati",board:"DAVV" ,start_date:"12-12-2020",end_date:"12-12-2023",marks:"80%")
 



training = Training.new(institution:"code better",course:"React js" , start_date:"12-12-2020",end_date:"12-12-2023",description:"best institute ever!")
 



projects = Projects.new(name:"Resume Builder",start_date:"1-3-2023",end_date:"2-3-2023",github:"unknown@github.com",link:"http://rubymonk.com/learning/books",technology:"reactjs",description:"make best resume!")
 




 class ResumeBuilder
    def initialize(person, experience, skill, qualifications, training, projects)
      @person = person
      @experience = experience
      @skill = skill
      @qualifications = qualifications
      @training = training
      @projects = projects
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
        file.puts("Company name: #{@experience.company_name}")
        file.puts("Current post: #{@experience.current_post}")
        file.puts("Joining date: #{@experience.joining_date}")
        file.puts("Exiting date: #{@experience.exiting_date}")
        file.puts("\n")
  
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
        file.puts("Name: #{@projects.name}")
        file.puts("Start date: #{@projects.start_date}")
        file.puts("End date: #{@projects.end_date}")
        file.puts("Github: #{@projects.github}")
        file.puts("Link: #{@projects.link}")
        file.puts("Technology: #{@projects.technology}")
        file.puts("Description: #{@projects.description}")
        file.puts("\n")
      end
    end
  end
  
  resume = ResumeBuilder.new(person, experience, skill, qualifications, training, projects)
#   resume.create_resume("resumenew5.txt")
  

  File.open("resumenew5.txt", "r") {|file| puts file.read }
  


