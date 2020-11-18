class RemovebodyFromMemos < ActiveRecord::Migration[5.2]
  def up
    remove_column :memos, :body
      end

  def down
    add_column :memos, :body, :text
  end
end
