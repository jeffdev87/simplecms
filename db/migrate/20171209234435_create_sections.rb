class CreateSections < ActiveRecord::Migration[5.1]
  def up
    create_table :sections do |t|
      t.string "name", :limit => 50, :null => false, :default => ''
      t.integer "position", :default => 0
      t.boolean "visible", :null => false, :default => false
      t.string "content_type", :default => ''
      t.text "content"
      t.timestamps
    end
  end

  def down
    drop_table :sections
  end
end
