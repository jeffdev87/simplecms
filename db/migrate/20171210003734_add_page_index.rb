class AddPageIndex < ActiveRecord::Migration[5.1]
  def up
    add_index("pages", "permalink")
  end

  def down
    remove_index("pages", "permalink")
  end
end
