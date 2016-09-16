class AddColumntoCharacters < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :type_id, :integer
  end
end
