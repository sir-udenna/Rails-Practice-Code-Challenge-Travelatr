class Destination < ApplicationRecord
    has_many :posts

    def dest_name
        self.name + ", " + self.country
    end

end
