class CreateCsses < ActiveRecord::Migration
  def change
    create_table :csses do |t|
      t.string :title
      t.text :code

      t.timestamps null: false
    end
  end
end
