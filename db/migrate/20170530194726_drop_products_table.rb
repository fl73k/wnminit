class DropProductsTable < ActiveRecord::Migration[5.1]
  def up
    drop_table :projects
    drop_table:todos
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end