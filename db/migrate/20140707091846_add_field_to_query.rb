class AddFieldToQuery < ActiveRecord::Migration
  def change
  	add_column :quereys, :user_id,:integer
  end
end
