class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.references :outlet, foreign_key: true
      t.string :title
      t.string :subtitle
      t.string :category
      t.string :url
      t.date   :time_published

      t.timestamps
    end
  end
end
