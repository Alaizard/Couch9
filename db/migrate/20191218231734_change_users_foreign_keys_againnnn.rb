class ChangeUsersForeignKeysAgainnnn < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :spot_id, :integer
  end
end
