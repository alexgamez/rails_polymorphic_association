class CreateMagazines < ActiveRecord::Migration[6.1]
  def change
    create_table :magazines do |t|
      t.string :title
      t.string :target_audiences
      t.text :description

      t.timestamps
    end
  end
end
