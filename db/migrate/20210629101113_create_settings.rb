class CreateSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :settings do |t|
      t.string :blogname
      t.integer :postperpage
      t.boolean :if_maintenance

      t.timestamps
    end
  end
end
