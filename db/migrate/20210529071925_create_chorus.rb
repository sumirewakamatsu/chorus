class CreateChorus < ActiveRecord::Migration[6.1]
  def change
    create_table :chorus do |t|
      t.datetime :date
      t.string :address
      t.string :name
      t.text :about
      t.integer :user_id

      t.timestamps
    end
  end
end
