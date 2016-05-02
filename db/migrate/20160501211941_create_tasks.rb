class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :navn
      t.text :beskrivelse
      t.integer :antal
      t.datetime :tid

      t.timestamps null: false
    end
  end
end
