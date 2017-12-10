class CreatePages < ActiveRecord::Migration[5.1]
  def up
    create_table :pages do |t|
      t.string "name", :limit => 50, :null => false, :default => ''
      t.integer "permalink"
      t.integer "position", :default => 0
      t.boolean "visible", :null => false, :default => false
      t.timestamps
    end
  end

  def down
    drop_table :pages
  end
end
