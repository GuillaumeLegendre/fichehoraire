class Mission < ActiveRecord::Base
  belongs_to :site
  has_many :interventions
end
