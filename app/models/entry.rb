class Entry < ActiveRecord::Base
  belongs_to :feed
  belongs_to :author
  belongs_to :tag
  validates_presence_of :title
  validates_presence_of :feed
  # validates_presence_of :author
  validates_presence_of :url
  validates_uniqueness_of :url
end
