class AddBadgeToSkills < ActiveRecord::Migration[5.2] # rails g migration add_badge_to_skills badge:text
  def change
    add_column :skills, :badge, :text
  end
end
