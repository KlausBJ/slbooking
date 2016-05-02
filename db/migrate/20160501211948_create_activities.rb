class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :navn
      t.text :beskrivelse
      t.integer :antal
      t.datetime :tid

      t.timestamps null: false
    end
  end
end
