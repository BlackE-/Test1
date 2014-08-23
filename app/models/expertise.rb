class Expertise < ActiveRecord::Base
	belongs_to :user
	belongs_to :profession

	validates_uniqueness_of :user_id, :scope => :profession_id
	validates_presence_of :user_id, :profession_id
end
