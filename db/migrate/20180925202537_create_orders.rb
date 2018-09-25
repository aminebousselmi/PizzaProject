class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :string
      t.string :adress
      t.string :string

      t.timestamps
    end
  end
end
