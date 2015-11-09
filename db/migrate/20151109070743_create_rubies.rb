class CreateRubies < ActiveRecord::Migration
  def change
    create_table :rubies do |t|
      t.string :title
      t.text :code

      t.timestamps null: false
    end
  end
end
