class Site < ActiveRecord::Base
  belongs_to :client
  has_many :missions
end
