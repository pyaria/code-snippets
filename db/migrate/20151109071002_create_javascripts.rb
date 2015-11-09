class CreateJavascripts < ActiveRecord::Migration
  def change
    create_table :javascripts do |t|
      t.string :title
      t.text :code

      t.timestamps null: false
    end
  end
end
