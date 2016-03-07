class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.integer :course_id
      t.decimal :price, precision: 5, scale: 2
      t.string :name
      t.text :description

      t.timestamps null: false
    end
    add_index :dishes, :course_id
  end
end
