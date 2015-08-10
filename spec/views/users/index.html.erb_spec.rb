require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name",
        :line1 => "Line1",
        :line2 => "Line2",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :phone => "Phone"
      ),
      User.create!(
        :name => "Name",
        :line1 => "Line1",
        :line2 => "Line2",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Line1".to_s, :count => 2
    assert_select "tr>td", :text => "Line2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
