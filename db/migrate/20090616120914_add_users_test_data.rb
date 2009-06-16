
class AddUsersTestData < ActiveRecord::Migration
  
  def self.up
    User.delete_all
    User.create(:name => 'Admin' ,
      :email => 'admin@athena.com',
      :password => '123456',
      :profile => "I am the Administrator."
    )
    User.create(:name => 'Joe',
      :email => 'joe@myemail.com',
      :password => 'joe1234',
      :profile=>"hi, I'm Joe.")
    User.create(:name => "Kate",
      :email => 'kate@cyber.org',
      :password => 'kate1234',
      :profile => "hi! I'm kate")
  end
  
  def self.down
    User.delete_all
  end
end