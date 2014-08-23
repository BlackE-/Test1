class Service < ActiveRecord::Base
	belongs_to :profession

	validates_presence_of :name

end
