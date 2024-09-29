class DropPrototypesTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :prototypes
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end