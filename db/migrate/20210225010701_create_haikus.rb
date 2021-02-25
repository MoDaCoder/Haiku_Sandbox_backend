class CreateHaikus < ActiveRecord::Migration[6.0]
  def change
    create_table :haikus do |t|
      t.string :title
      t.string :haiku
      t.string :genre
      
      t.timestamps
    end
  end
end
