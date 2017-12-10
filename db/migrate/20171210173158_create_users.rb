class CreateUsers < ActiveRecord::Migration[5.1]
  def up
    create_table :users do |t|
      # id is default if true/ do not need to specify

      t.column "first_name", :string, :limit => 25
      t.string "last_name", :limit => 50  #short-hand syntax
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 40

      # rails will manage it for us
      t.timestamps  
      #t.datetime "created_at"      
      #t.datetime "updated_at"           
    end
  end

  def down
    drop_table :users
  end
end
