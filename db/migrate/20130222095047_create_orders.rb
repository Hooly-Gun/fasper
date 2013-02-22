class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :number_order
      t.datetime :date_order
      t.datetime :date_edit
      t.integer :id_customer
      t.integer :id_linkman
      t.integer :id_order_status
      t.decimal :summa_order
      t.text :description

      t.timestamps
    end
  end
end
