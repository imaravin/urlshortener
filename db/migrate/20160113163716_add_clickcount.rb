class AddClickcount < ActiveRecord::Migration
  def change
  	add_column :urls, :clickcount, :Integer
  end
end
