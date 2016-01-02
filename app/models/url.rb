class Url < ActiveRecord::Base
	validates :longurl, :presence => true

end
