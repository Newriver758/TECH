class AddAuthorToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :author, :string
  end
end
