class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|
      t.text :content
      t.boolean :direction

      t.timestamps null: false
    end
  end
end
