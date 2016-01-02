class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :longurl, :null => false
      t.string :shorturl, :null => false

      t.timestamps null: false
    end
  end
end
