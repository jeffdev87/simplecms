class AddSectionForeignKey < ActiveRecord::Migration[5.1]
  def up
    add_reference :sections, :pages, index: true, foreign_key: true
  end

  def down
    remove_reference :sections, :pages, index: true, foreign_key: true    
  end
end
