class Movie < ActiveRecord::Base
	belongs_to :genre
	validate :must_have_valid_trailer
	#has_many :posts, :dependent => :destroy
	
	def must_have_valid_trailer
		unless trailer.include?("<iframe")
			errors.add(:trailer, "Must include an iframe tag")
		end
	end	
	#<h2>Please leave a comment:</h2>
		#<%= form_for([@movie, Post.new]) do |f| %>
			#<%= f.text_area :content, : rows => 3 %>
				#<div class="actions">
				#<%= f.submit "Post a Comment"%>
			#</div>
		#<% end %>
end
