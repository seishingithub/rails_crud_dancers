class CreateDancers < ActiveRecord::Migration
  def change
    create_table :dancers do |t|
      t.string :name
      t.string :genre
    end
  end
end
