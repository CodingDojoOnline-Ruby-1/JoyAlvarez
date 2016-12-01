class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.text :description
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
