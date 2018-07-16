class CreateTechnologies < ActiveRecord::Migration[5.2]  # rails g model Technology name:string portfolio:references
  def change
    create_table :technologies do |t|
      t.string :name
      t.references :portfolio, foreign_key: true # here is info about foreign key from another table

      t.timestamps
    end
  end
end
