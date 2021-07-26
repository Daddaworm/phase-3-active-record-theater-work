class Role < ActiveRecord::Base
    has_many :auditions


    def actors 
        # returns an array of names from the actors associated with this role

        self.auditions.pluck(:actor)
    end


    def locations
        # returns an array of locations from the auditions associated with this role
        self.auditions.pluck(:location)
    end


    def lead
        # returns the first instance of the audition that was hired for this role or returns a string 'no actor has been hired for this role'
        self.auditions.find_by("hired == ?", true)
        puts "no actor has been hired for this role"
    end
    

end