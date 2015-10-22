ActiveAdmin.register Entry do
  permit_params :title, :url, :feed_id, :author_id, :tag_id
end
