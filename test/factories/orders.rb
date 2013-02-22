# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    number_order "MyString"
    date_order "2013-02-22 04:50:53"
    date_edit ""
    id_customer ""
    id_linkman ""
    id_order_status ""
    summa_order "9.99"
    description "MyText"
  end
end
