class CreateFeedbacks < ActiveRecord::Migration[7.1]
  def change
    create_table :feedbacks do |t|
      t.text :content
      t.integer :likes_count

      t.timestamps
    end
  end
end
