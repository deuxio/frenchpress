class Feed < ActiveRecord::Base
  has_many :entries
  validates_presence_of :title
  validates_presence_of :url
  validates_uniqueness_of :url
end
