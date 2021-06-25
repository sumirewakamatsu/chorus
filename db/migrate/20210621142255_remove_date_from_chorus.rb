class RemoveDateFromChorus < ActiveRecord::Migration[6.1]
  def change
    remove_column :chorus, :date, :datetime
  end
end
