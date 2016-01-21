class AddIpColumnToUrls < ActiveRecord::Migration
  def change
  	 add_column :urls, :ip, :String
  end
end
