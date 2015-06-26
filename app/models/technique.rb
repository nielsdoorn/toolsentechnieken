class Technique < ActiveRecord::Base
  validates :title, :subtitle, :description, :link, presence: true
end
