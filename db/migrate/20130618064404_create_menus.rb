class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.decimal :price ,     :precision => 8, :scale => 2
      t.integer :faverate ,  :null => false, :default => 0, :limit => 2
      t.integer :all_count,  :null => false, :default => 0
      t.integer :day_count , :null => false, :default => 0

      t.timestamps
    end
  end
end
