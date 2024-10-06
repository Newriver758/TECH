class AddUserIdToAnswers < ActiveRecord::Migration[7.0]
  def change
    unless column_exists?(:answers, :user_id)
      add_reference :answers, :user, null: false, foreign_key: true, type: :bigint
    end
  end
end
