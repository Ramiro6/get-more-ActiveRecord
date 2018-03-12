class AddStyleToProducts < ActiveRecord::Migration[5.2]
  def up
    add_reference :products, :style
  end

  def down
    remove_reference :products, :style
  end
end
