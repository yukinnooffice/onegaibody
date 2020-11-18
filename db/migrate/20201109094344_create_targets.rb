class CreateTargets < ActiveRecord::Migration[5.2]
  def change
    create_table :targets do |t|
      t.string :name, null: false
      t.boolean :is_active, null: false, default: true
      t.timestamps
    end
    add_index :targets, :name, unique: true
  end
end
