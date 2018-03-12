require_relative '20180312083510_add_style_to_products'

class RevertAddStyleToProducts < ActiveRecord::Migration[5.2]
  def change
    revert AddStyleToProducts
  end
end
