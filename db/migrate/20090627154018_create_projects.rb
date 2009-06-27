class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.column :project_no, :string
      t.column :subject, :string, :limit => 80
      t.column :tags, :string, :limit => 256
      t.column :mission, :string 
      t.column :budget, :float
      t.column :description ,:text
      t.column :start_date , :datetime
      t.column :end_date , :datetime
      t.column :status , :string
      t.timestamps
    end

    create_table :project_category do |t|
      t.column :project_id ,  :integer
      t.column :category_id , :integer
    end

  end


  def self.down
    drop_table :projects
    drop_table :project_category
  end
end
