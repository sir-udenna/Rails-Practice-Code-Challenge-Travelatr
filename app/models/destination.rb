class Destination < ApplicationRecord
    has_many :posts

    def dest_name
        self.name + ", " + self.country
    end

    def avg_age
        ages = []
     self.posts.each do |post|
       ages << post.blogger.age
       end
       avg = ages.sum / ages.length
       avg
    end

    

end
