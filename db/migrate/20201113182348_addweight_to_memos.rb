class AddweightToMemos < ActiveRecord::Migration[5.2]
  def change
  	add_column :memos, :weight, :integer
  	add_column :memos, :rep, :integer
  end
end
