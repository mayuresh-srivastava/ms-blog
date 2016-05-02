class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.text :content
      t.integer :rating
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
      t.text :title
    end
  end
end
