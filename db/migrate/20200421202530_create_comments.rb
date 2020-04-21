class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :story_part
      t.text :text
      t.belongs_to :post
      t.belongs_to :user
      t.timestamps
    end
  end
end
