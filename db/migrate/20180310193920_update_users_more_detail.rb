class UpdateUsersMoreDetail < ActiveRecord::Migration[5.2]
  def change
    add_column(:users, :name, :string, limit: 50, null: false, default: '')
    add_column(:users, :description, :string, limit: 200, null: false, default: '')
    add_column(:users, :image, :string, null: false, default: '')
  end
end
