class User < ActiveRecord::Base
  authenticates_with_sorcery!


  validates_presence_of :email, :first_name, :last_name, :password

  has_many :projects
end
