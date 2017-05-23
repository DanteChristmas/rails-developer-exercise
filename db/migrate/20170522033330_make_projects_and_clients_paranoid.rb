class MakeProjectsAndClientsParanoid < ActiveRecord::Migration
  def change
    add_column :projects, :deleted_at, :datetime
    add_index :projects, :deleted_at

    add_column :items, :deleted_at, :datetime
    add_index :items, :deleted_at
  end
end
