class Athlete < ActiveRecord::Base
  belongs_to :user
  belongs_to :coach
end
