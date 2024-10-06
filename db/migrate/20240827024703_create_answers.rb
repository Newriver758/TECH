class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.bigint :question_id  # ここをintegerからbigintに変更
      t.text :content
      t.string :name
      t.integer :user_id
      t.timestamps
    end

    add_foreign_key :answers, :questions  # 外部キー制約を追加
  end
end