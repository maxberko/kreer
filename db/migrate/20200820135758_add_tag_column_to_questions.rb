class AddTagColumnToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :tag, :string
  end
end
