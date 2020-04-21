class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :text
      t.string :title
      t.belongs_to :user
      t.has_many :comments
      t.timestamps
    end
  end
end