class CreateProcessdefs < ActiveRecord::Migration
  def change
    create_table :processdefs do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
