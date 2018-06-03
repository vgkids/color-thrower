class AddHexColorToThrow < ActiveRecord::Migration
  def change
    add_column :throws, :hex_color, :string
  end
end
