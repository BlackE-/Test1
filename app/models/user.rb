class User < ActiveRecord::Base
	has_many :expertises, :foreign_key => :user_id
	has_many :professions, through: :expertises
	validates_presence_of :name, :email, :years
end
