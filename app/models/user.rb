class User < ActiveRecord::Base
validates :name, presence: true
#validates :email, uniqueness: true
validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/} 
has_secure_password

#has_many :posts, :dependent => :destroy
end
