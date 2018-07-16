class AddTopicReferenceToBlogs < ActiveRecord::Migration[5.2] # rails g migration add_topic_reference_to_blogs topic:references
  def change
    add_reference :blogs, :topic, foreign_key: true
  end
end
