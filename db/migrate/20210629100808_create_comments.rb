class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :fullname
      t.string :email
      t.string :message
      t.boolean :status
      t.integer :article_id

      t.timestamps
    end
  end
end
