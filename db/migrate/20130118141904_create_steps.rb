class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :name
      t.text :description
      t.integer :pt
      t.integer :lt
      t.integer :processdef_id

      t.timestamps
    end
  end
end
