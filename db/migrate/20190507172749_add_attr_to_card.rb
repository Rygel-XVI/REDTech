class AddAttrToCard < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :suit, :string
    add_column :cards, :number, :integer
  end
end
