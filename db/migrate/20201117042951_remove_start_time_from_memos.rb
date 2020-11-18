class RemoveStartTimeFromMemos < ActiveRecord::Migration[5.2]
  def up
    remove_column :memos, :start_time, :date
    add_column :memos, :start_time, :datetime
  end


  def down
    add_column :memos, :start_time, :date
  end
end