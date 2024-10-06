class ChangeUserIdToBigintInAnswers < ActiveRecord::Migration[7.0]
  def change
    change_column :answers, :user_id, :bigint
  end

  def down
    change_column :answers, :user_id, :integer
  end
end
