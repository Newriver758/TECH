class RenameBodyToContent < ActiveRecord::Migration[7.0]
  def change
    rename_column :questions, :body, :content
  end
end
