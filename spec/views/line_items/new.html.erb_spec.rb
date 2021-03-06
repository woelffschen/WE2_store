require 'rails_helper'

RSpec.describe "line_items/new", type: :view do
  before(:each) do
    assign(:line_item, LineItem.new(
      :title => "MyString",
      :quantity => 1,
      :price => "9.99",
      :total => "9.99"
    ))
  end

  it "renders new line_item form" do
    render

    assert_select "form[action=?][method=?]", line_items_path, "post" do

      assert_select "input#line_item_title[name=?]", "line_item[title]"

      assert_select "input#line_item_quantity[name=?]", "line_item[quantity]"

      assert_select "input#line_item_price[name=?]", "line_item[price]"

      assert_select "input#line_item_total[name=?]", "line_item[total]"
    end
  end
end
