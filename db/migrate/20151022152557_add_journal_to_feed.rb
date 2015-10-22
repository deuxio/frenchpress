class AddJournalToFeed < ActiveRecord::Migration
  def change
        add_column :feeds, :journal, :string
  end
end
