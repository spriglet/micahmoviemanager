class Movies < ActiveRecord::Migration
  def change
    create_table :movies
        t.string :title, :limit => 50, :null=>false
        t.string :format, :null=>false
        t.integer :length, unsigned: true, :limit => 2,null:=>false
        t.integer :release_year, unsigned: true, :limit =>2,null:=>false
        t.integer :rating, unsigned: true, :limit =>1,null:=>false
        t.timestamps null: false
    end
  end
end
