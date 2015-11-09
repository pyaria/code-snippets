class CreateHtmls < ActiveRecord::Migration
  def change
    create_table :htmls do |t|
      t.string :title
      t.text :code

      t.timestamps null: false
    end
  end
end
