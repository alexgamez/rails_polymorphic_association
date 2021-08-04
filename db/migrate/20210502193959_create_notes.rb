class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :content
      t.integer :noteable_id
      t.string :noteable_type

      t.timestamps
    end
  end
end
