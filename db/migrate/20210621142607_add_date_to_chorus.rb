class AddDateToChorus < ActiveRecord::Migration[6.1]
  def change
    add_column :chorus, :date, :string
  end
end
