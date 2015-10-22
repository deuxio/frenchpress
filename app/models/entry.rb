class Entry < ActiveRecord::Base
  belongs_to :feed
  belongs_to :author
  belongs_to :tag
end
