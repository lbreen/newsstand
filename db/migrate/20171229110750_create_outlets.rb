class CreateOutlets < ActiveRecord::Migration[5.1]
  def change
    create_table :outlets do |t|
      t.string :name
      t.string :url
      t.string :css_tag
      t.date :last_retrieved

      t.timestamps
    end
  end
end
