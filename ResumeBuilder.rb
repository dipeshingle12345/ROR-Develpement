class PersonalDetails
    attr_reader :name,:email,:mobile,:place,:preferred_location
    def initialize(**args)
        @name=args[:name]
        @email=args[:email]
        @mobile=args[:mobile]
        @place=args[:place]
        @preferred_location=args[:preferred_location]
    end
    def getpersonaldetails
        [@name,@email,@mobile,@place,@preferred_location]
    end
end

class Experience
    def initialize(company_name,current_post,joining_date,exiting_date)
        @company_name=company_name
        @current_post=current_post
        @joining_date=joining_date
        @exiting_date=exiting_date

    end
    def getexperiencedetails
        [@company_name,@current_post,@joining_date,@exiting_date]
    end
end


class Skill
    def initialize(name,level,duration)
        @name=name
        @level=level
        @duration=duration


    end
    def getskilldetails
        [@name,@level,@duration]
    end
end



class Qualifications
    def initialize(course,college,board,start_date,end_date,marks)
        @course=course
        @college=college
        @board=board
        @start_date=start_date
        @end_date=end_date
        @marks=marks
    end
    def getqualificationsdetails
        [@course,@college,@board,@start_date,@end_date,@marks]
    end
end



class Training 
    def initialize(institution,course , start_date,end_date,description)
        @institution=institution
        @course=course
        @start_date=start_date
        @end_date=end_date
        @description=description
    end
    def gettrainingdetails
        [@institution,@course,@start_date,@end_date,@description]
    end
end


class Projects
    def initialize(name,start_date,end_date,github,link,technology,description)
        @name=name
        @start_date=start_date
        @end_date=end_date
        @github=github
        @link=link
        @technology=technology
        @description=description
    end
    def getprojectdetails
        [@name,@start_date,@end_date,@github,@link,@technology,@description]
    end
end




person = PersonalDetails.new(name: "John Smith",email: "john.smith@example.com", mobile: "555-1234",place: "New York",preferred_location: "San Francisco")

# person = PersonalDetails.new("John Smith", "john.smith@example.com", "555-1234", "New York", "San Francisco")
 


experience = Experience.new("mindfire","software engineer","20-12-2022","20-12-2023")
 


skill = Skill.new("React Js ","intermediate","1year")
 



qualifications = Qualifications.new("B.sc","Gujarati","DAVV" , "12-12-2020","12-12-2023","80%")
 



training = Training.new("code better","React js" , "12-12-2020","12-12-2023","best institute ever!")
 



projects = Projects.new("Resume Builder","1-3-2023","2-3-2023","unknown@github.com","http://rubymonk.com/learning/books","reactjs","make best resume!")
 




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
        file.puts("Company name: #{@experience.getexperiencedetails[0]}")
        file.puts("Current post: #{@experience.getexperiencedetails[1]}")
        file.puts("Joining date: #{@experience.getexperiencedetails[2]}")
        file.puts("Exiting date: #{@experience.getexperiencedetails[3]}")
        file.puts("\n")
  
        file.puts("Skills:")
        file.puts("Name: #{@skill.getskilldetails[0]}")
        file.puts("Level: #{@skill.getskilldetails[1]}")
        file.puts("Duration: #{@skill.getskilldetails[2]}")
        file.puts("\n")
  
        file.puts("Qualifications:")
        file.puts("Course: #{@qualifications.getqualificationsdetails[0]}")
        file.puts("College: #{@qualifications.getqualificationsdetails[1]}")
        file.puts("Board: #{@qualifications.getqualificationsdetails[2]}")
        file.puts("Start date: #{@qualifications.getqualificationsdetails[3]}")
        file.puts("End date: #{@qualifications.getqualificationsdetails[4]}")
        file.puts("Marks: #{@qualifications.getqualificationsdetails[5]}")
        file.puts("\n")
  
        file.puts("Training:")
        file.puts("Institution: #{@training.gettrainingdetails[0]}")
        file.puts("Course: #{@training.gettrainingdetails[1]}")
        file.puts("Start date: #{@training.gettrainingdetails[2]}")
        file.puts("End date: #{@training.gettrainingdetails[3]}")
        file.puts("Description: #{@training.gettrainingdetails[4]}")
        file.puts("\n")
  
        file.puts("Projects:")
        file.puts("Name: #{@projects.getprojectdetails[0]}")
        file.puts("Start date: #{@projects.getprojectdetails[1]}")
        file.puts("End date: #{@projects.getprojectdetails[2]}")
        file.puts("Github: #{@projects.getprojectdetails[3]}")
        file.puts("Link: #{@projects.getprojectdetails[4]}")
        file.puts("Technology: #{@projects.getprojectdetails[5]}")
        file.puts("Description: #{@projects.getprojectdetails[6]}")
        file.puts("\n")
      end
    end
  end
  
  resume = ResumeBuilder.new(person, experience, skill, qualifications, training, projects)
  resume.create_resume("resumenew3.txt")
  

  File.open("resumenew2.txt", "r") {|file| puts file.read }
  


