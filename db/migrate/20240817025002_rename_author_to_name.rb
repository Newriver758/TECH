class RenameAuthorToName < ActiveRecord::Migration[7.0]
  def change
    rename_column :questions, :author, :name
  end
end
