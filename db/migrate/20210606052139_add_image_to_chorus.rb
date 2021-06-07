class AddImageToChorus < ActiveRecord::Migration[6.1]
  def change
    add_column :chorus, :image, :string
  end
end
