class Feed < ActiveRecord::Base
  has_many :entries
  validates_presence_of :title
  validates_presence_of :url
end
