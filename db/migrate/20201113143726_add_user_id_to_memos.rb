class AddUserIdToMemos < ActiveRecord::Migration[5.2]
  def change
    add_column :memos, :user_id, :integer
    add_column :memos, :menu, :string
    add_column :memos, :set, :integer
    add_column :memos, :start_time, :date
  end
end
