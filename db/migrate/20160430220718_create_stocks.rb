class CreateStocks < ActiveRecord::Migration[4.2]
  def change
    create_table :stocks do |t|
      t.string :ticker
      t.string :name
      t.string :last_price
      t.string :decimal

      t.timestamps null: false
    end
  end
end
