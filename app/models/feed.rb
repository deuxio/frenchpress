class Feed < ActiveRecord::Base
  has_many :entries, dependent: :destroy
  validates_presence_of :journal
  validates_presence_of :url
  validates_uniqueness_of :url
  after_create :first_fetch

  def first_fetch
    fetch
    retrieve_info(@feed)
  end

  def fetch
    @feed = Feedjira::Feed.fetch_and_parse self.url
  end

  def retrieve_info(feed)
    self.update(
      title: feed.title,
      url: url,
      journal: journal
      )
    feed.entries.each do |entry|
      parse_entry(entry)
    end
  end

  def parse_entry(entry)
    e = Entry.where(title: entry.title).first_or_create(
      feed_id: self.id,
      title: entry.title,
      url: entry.url,
      author: Author.where(name: entry.author).first_or_create,
      tag_id: Tag.where(name: entry.categories).first_or_create.id
      )
    # raise
  end
end
