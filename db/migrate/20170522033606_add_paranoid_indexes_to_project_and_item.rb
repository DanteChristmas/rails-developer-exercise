class AddParanoidIndexesToProjectAndItem < ActiveRecord::Migration
  def change
    remove_index :projects, :title
    add_index :projects, :id, where: "deleted_at IS NULL", unique: true
    add_index :projects, :title, where: "deleted_at IS NULL", unique: true

    add_index :items, :id, where: "deleted_at IS NULL", unique: true
  end
end
