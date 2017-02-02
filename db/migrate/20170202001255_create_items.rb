class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :list_id
      t.integer :order
      t.string :img_path

      t.timestamps
    end
  end
end
