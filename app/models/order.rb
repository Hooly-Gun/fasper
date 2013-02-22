class Order < ActiveRecord::Base
  attr_accessible :date_edit, :date_order, :description, :id_customer, :id_linkman, :id_order_status, :number_order, :summa_order
end
