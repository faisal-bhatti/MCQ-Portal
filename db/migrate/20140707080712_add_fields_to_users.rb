class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :grade, :string
    add_column :users, :first_name, :string
    add_column :users, :group, :string
    add_column :users, :contact, :string
  end
end
