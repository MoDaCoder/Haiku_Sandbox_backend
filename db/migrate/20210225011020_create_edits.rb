class CreateEdits < ActiveRecord::Migration[6.0]
  def change
    create_table :edits do |t|
      t.string :edit
      t.references :haiku, null: false, foreign_key: true

      t.timestamps
    end
  end
end
