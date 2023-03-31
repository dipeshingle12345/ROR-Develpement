# 1.By replacing the question marks in Listing 4.10 with the appropriate methods, combine split, shuffle, and join to write a function that shuffles the letters in a given string.
# ans==>
def string_shuffle(str)
    str.split("").shuffle.join("")
end
puts string_shuffle("foobar")

# 2.Using Listing 4.11 as a guide, add a shuffle method to the String class.
class String 
    def shuffle
        self.split("").shuffle.join("")
    end
end
puts "foobar".shuffle


# 3.Create three hashes called person1, person2, and person3, with first and last names under the keys :first and :last. Then create a params hash so that params[:father] is person1, params[:mother] is person2, and params[:child] is person3. Verify
person1 = {first:"dipesh",last:"ingle"}
person2 = {first:"kunal",last:"rokhle"}
person3 = {first:"rahul",last:"singh"}

params = {father:person1 , mother:person2 , child:person3}
# params = {:father=>person1 , :mother=>person2 , :child=>person3}
# params = {"father":person1 , "mother":person2 , "child":person3}


puts params[:father][:first]
puts params[:mother][:first]
puts params[:child][:first]
