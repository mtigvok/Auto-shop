class AddPhotosToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :photos, :string
  end
end
