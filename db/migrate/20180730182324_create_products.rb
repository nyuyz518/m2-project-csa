class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.references :farm, foreign_key: true
      t.references :wish_list, foreign_key: true

      t.timestamps
    end
  end
end
