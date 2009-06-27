class CreatePaidUsers < ActiveRecord::Migration
  def self.up
    create_table :paid_users do |t|
      t.column :user_id , :integer
      t.column :status , :string
      t.colomn :date_become_paid , :datetime
      t.timestamps
    end
  end

  def self.down
    drop_table :paid_users
  end
end
