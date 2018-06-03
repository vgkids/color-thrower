class CreateThrows < ActiveRecord::Migration
  def change
    create_table :throws do |t|
      t.string :name
      t.string :comment

      t.timestamps null: false
    end
  end
end
