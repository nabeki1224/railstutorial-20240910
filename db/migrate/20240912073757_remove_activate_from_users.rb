class RemoveActivateFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :activation_digest, :string
    remove_column :users, :activated, :boolean
    remove_column :users, :activated_at, :datetime
  end
end
