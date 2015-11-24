class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.integer :priority
      t.integer :percent_complete
      t.text :notes
      t.references :list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
