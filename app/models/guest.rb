class Guest < ApplicationRecord
  belongs_to :episode
  has_many :episodes
  #need to express the possibility that
  #there a Guest has one episdode.

end
