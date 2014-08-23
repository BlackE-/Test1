class Profession < ActiveRecord::Base
	has_many :services
	has_many :expertises, :foreign_key => :profession_id
	has_many :users, through: :expertises

	validates_presence_of :name
end
