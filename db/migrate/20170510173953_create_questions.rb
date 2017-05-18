class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      t.text :options
      t.text :answer
      t.integer :exam_id

      t.timestamps null: false
    end
  end
end
