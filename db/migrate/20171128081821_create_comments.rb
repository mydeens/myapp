class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user
      t.integer :post_id
      t.text :comment

      t.timestamps
    end
  end
end
