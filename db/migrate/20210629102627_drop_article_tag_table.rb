class DropArticleTagTable < ActiveRecord::Migration[5.2]
  def change
  	    drop_table :article_tags
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
