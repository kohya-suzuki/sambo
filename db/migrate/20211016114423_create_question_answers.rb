class CreateQuestionAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :question_answers do |t|

      t.references :question, foreign_key: true
      t.references :answer, foreign_key: true
      t.timestamps
    end
  end
end
