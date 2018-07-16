class CreateTopics < ActiveRecord::Migration[5.2] #rails g model Topic title:string
  def change
    create_table :topics do |t|
      t.string :title

      t.timestamps
    end
  end
end
