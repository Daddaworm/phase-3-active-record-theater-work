class Audition < ActiveRecord::Base
    belongs_to :role



    def call_back
        # will change the the hired attribute to true
        # audition = self.hired = true
        # audition.save

        self.update(hired: true)
    end




end