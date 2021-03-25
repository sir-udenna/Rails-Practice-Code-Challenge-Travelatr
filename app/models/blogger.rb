class Blogger < ApplicationRecord
    has_many :posts

    ###SHOW TOTAL LIKES ON ALL BLOGGERS POSTS####
#FIND A BLOGGER
#FIND ALL POSTS
#COUNT LIKES FROM ALL POSTS

# <%@total_like = 0%>

# <%self.posts.each do |post|%>
#   <% @total_likes += post.likes%>
#   <%end%>

def total_likes
@total_like = 0

self.posts.each do |post|
  @total_likes += post.likes
  end
end


end
