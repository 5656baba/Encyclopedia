class CreateSummaries < ActiveRecord::Migration[5.2]
  def change
    create_table :summaries do |t|
      t.string :title
      t.text :sentence
      t.string :url
      t.integer :genre_id

      t.timestamps
    end
  end
end
