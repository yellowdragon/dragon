class CreateTenders < ActiveRecord::Migration
  def self.up
    create_table :tenders do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :tenders
  end
end
