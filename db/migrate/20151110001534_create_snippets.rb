class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :language
      t.string :title
      t.text :code

      t.timestamps null: false
    end
  end
end
