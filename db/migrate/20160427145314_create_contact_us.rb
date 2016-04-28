class CreateContactUs < ActiveRecord::Migration
  def self.up
    create_table :contact_us do |t|
      
         t.column :name, :string, :limit => 32, :null => false
         t.column :email, :string
         t.column :description, :text
         t.column :newsletter, :boolean
         t.column :gender, :string
         t.column :product, :string
         t.timestamps null: false
    end
  end
  
  def self.down
      drop_table :books
  end
  
end
