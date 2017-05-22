class AddParanoidIndexesToProjectAndItem < ActiveRecord::Migration
  def change
    remove_index :projects, :title
    add_index :projects, [:id, 'COALESCE(deleted_at, false)'], unique: true
    add_index :projects, [:title, 'COALESCE(deleted_at, false)'], unique: true

    add_index :items, [:id, 'COALESCE(deleted_at, false)'], unique: true
  end
end
