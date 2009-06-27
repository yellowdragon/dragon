class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.column :name , :string
      t.column :description , :text
      t.timestamps
    end

    create_table :category_structure do |t|
      t.column :category_di, :integer
      t.column :parent_cateogyr_id, :integer
    end
  end

  def self.down
    drop_table :categories
    drop_table :category_structure
  end
end
