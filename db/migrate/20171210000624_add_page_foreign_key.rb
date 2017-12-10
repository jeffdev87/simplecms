class AddPageForeignKey < ActiveRecord::Migration[5.1]
  def up
    add_reference :pages, :subjects, index: true, foreign_key: true
  end

  def down
    remove_reference :pages, :subjects, index: true, foreign_key: true    
  end
end
